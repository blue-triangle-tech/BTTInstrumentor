import SwiftUI

// MARK: - Scenario 10: #if/#else compiler directive

struct IfConfigView: View {
    var body: some View {
        #if DEBUG
        DebugView()
        #else
        ReleaseView()
        #endif
    }
}

/*
 struct IfConfigView: View {
     var body: some View {
         #if DEBUG
         DebugView()
             .bttTrackScreen("\(Self.self)")
         #else
         ReleaseView()
             .bttTrackScreen("\(Self.self)")
         #endif
     }
 }
 */

struct IfConfigScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A #if/#else compiler directive. The rewriter treats each clause as a separate branch and injects .bttTrackScreen into both, ensuring tracking works in DEBUG and release builds.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            IfConfigView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("#if Config")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct IfConfigScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("#if Config")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
