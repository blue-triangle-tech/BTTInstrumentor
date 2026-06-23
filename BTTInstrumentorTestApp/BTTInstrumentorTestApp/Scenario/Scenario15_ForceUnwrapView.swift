import SwiftUI
import BlueTriangle

// MARK: - Scenario 15: Force-unwrap optional view

struct ForceUnwrapView: View {
    var optionalView: AnyView? = AnyView(Text("Unwrapped"))
    var body: some View {
        optionalView!
        .bttTrack("\(Self.self)")
    }
}

/*
 struct ForceUnwrapView: View {
     var optionalView: AnyView? = AnyView(Text("Unwrapped"))
     var body: some View {
         optionalView!
             .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct ForceUnwrapScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A force-unwrap expression (!) on an optional view. The rewriter recognises ForceUnwrapExprSyntax as a valid view expression and appends .bttTrackScreen to it.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            ForceUnwrapView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Force Unwrap")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct ForceUnwrapScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Force Unwrap")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
