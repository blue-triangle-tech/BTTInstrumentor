import SwiftUI
import BlueTriangle

// MARK: - Scenario 04: Ternary expression

struct TernaryView: View {
    @State private var flag = false
    var body: some View {
        flag ? Text("True")
        .bttTrack("\(Self.self)") : Text("False")
        .bttTrack("\(Self.self)")
    }
}

/*
 struct TernaryView: View {
     @State private var flag = false
     var body: some View {
         flag ? Text("True")
                    .bttTrackScreen("\(Self.self)")
              : Text("False")
                    .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct TernaryScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A ternary expression in the body. The rewriter injects .bttTrackScreen into both the true and false branches independently, so tracking fires regardless of which branch is active.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            TernaryView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Ternary")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct TernaryScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Ternary")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
