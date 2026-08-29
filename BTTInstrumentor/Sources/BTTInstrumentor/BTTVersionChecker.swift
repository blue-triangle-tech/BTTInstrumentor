//
//  BTTVersionChecker.swift
//  BTTInstrumentor
//
//  Created by Ashok Singh on 04/06/26.
//

#if os(macOS)
import Foundation

enum BTTResolvedPin {
    /// Pin found with a semantic version (normal release-tag dependency).
    case versioned(String)
    /// Pin found but resolved to a branch/revision — no semantic version to compare.
    case unversioned(ref: String)
    /// No matching pin found in any candidate Package.resolved.
    case notFound
}

final class BTTVersionChecker {
    private let xcodeprojPath: String
    init(xcodeprojPath: String) {
        self.xcodeprojPath = xcodeprojPath
    }

    // MARK: - Public API
    /// Returns the pinned BlueTriangle version from Package.resolved, or `nil` if not found.
    /// Covers plain xcodeproj, xcworkspace (CocoaPods + SPM), and Package.swift root setups.
    func resolvedPin() -> BTTResolvedPin {
        let projDir  = (xcodeprojPath as NSString).deletingLastPathComponent
        let projName = ((xcodeprojPath as NSString).lastPathComponent as NSString).deletingPathExtension
        let wsDir    = (projDir as NSString).appendingPathComponent("\(projName).xcworkspace")

        let candidates: [String] =
            BTTConstants.packageResolvedCandidates.map {
                (xcodeprojPath as NSString).appendingPathComponent($0)
            } +
            BTTConstants.workspaceResolvedCandidates.map {
                (wsDir as NSString).appendingPathComponent($0)
            } +
            [(projDir as NSString).appendingPathComponent(BTTConstants.rootPackageResolved)]

        for path in candidates {
            let pin = parsePin(from: path)
            if case .notFound = pin { continue }
            return pin
        }
        return .notFound
    }

    /// Always returns true (never blocks the caller) — surfaces problems as warnings only.
    @discardableResult
    func checkAndProceed() -> Bool {
        switch resolvedPin() {
        case .notFound:
            BTTLog.warn("BTTInstrumentor is not able to detect the \(BTTConstants.bttProductName) SDK. Instrumentation will proceed assuming the \(BTTConstants.bttProductName) SDK will be importable in each SwiftUI file in this target.")

        case .unversioned(let ref):
            BTTLog.warn("BTTInstrumentor could not detect the \(BTTConstants.bttProductName) SDK version — it may be using a development version (\(ref)) instead of a release version. Proceeding anyway.")

        case .versioned(let version):
            if Self.isVersion(version, atLeast: BTTConstants.minBTTVersion) {
                BTTLog.verbose("\(BTTConstants.bttProductName) SDK version \(version) looks good.")
            } else {
                BTTLog.warn(
                    "Your \(BTTConstants.bttProductName) SDK version (\(version)) is too old to automatically track SwiftUI screens. " +
                    "Please update it in Xcode (File → Packages → Update to Latest Package Versions), " +
                    "then quit Xcode and run BTTInstrumentor again."
                )
            }
        }
        return true
    }

    // MARK: - Version comparison
    static func isVersion(_ a: String, atLeast b: String) -> Bool {
        let av = a.components(separatedBy: ".").compactMap { Int($0) }
        let bv = b.components(separatedBy: ".").compactMap { Int($0) }
        for i in 0..<max(av.count, bv.count) {
            let ai = i < av.count ? av[i] : 0
            let bi = i < bv.count ? bv[i] : 0
            if ai != bi { return ai > bi }
        }
        return true
    }

    /// Runs `path --version` and returns the last whitespace-separated token.
    static func binaryVersion(at path: String) -> String? {
        guard FileManager.default.fileExists(atPath: path) else { return nil }
        let task = Process()
        task.launchPath     = path
        task.arguments      = ["--version"]
        let pipe            = Pipe()
        task.standardOutput = pipe
        task.standardError  = Pipe()
        try? task.run()
        task.waitUntilExit()
        return String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: .utf8)?
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: " ").last
    }

    // MARK: - Private
    private func parsePin(from path: String) -> BTTResolvedPin {
        guard FileManager.default.fileExists(atPath: path),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any]
        else { return .notFound }

        let pins: [[String: Any]]
        if let p = json["pins"] as? [[String: Any]] {
            pins = p
        } else if let p = (json["object"] as? [String: Any])?["pins"] as? [[String: Any]] {
            pins = p
        } else {
            return .notFound
        }

        for pin in pins {
            let identity = (pin["identity"] as? String ?? pin["package"] as? String ?? "").lowercased()
            guard identity.contains("btt-swift-sdk") else { continue }

            let state = pin["state"] as? [String: Any]
            if let version = state?["version"] as? String {
                return .versioned(version)
            }
            let ref = (state?["branch"] as? String) ?? (state?["revision"] as? String) ?? "unknown ref"
            return .unversioned(ref: ref)
        }
        return .notFound
    }
}
#endif
