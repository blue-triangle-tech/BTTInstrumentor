// btt:ignore
import SwiftUI
import BlueTriangle

// MARK: - Scenario 12: Side-effect (let binding) before real view

struct SideEffectBeforeView: View {
    var body: some View {
        let message = "appeared"
        return Text(message)
    }
}


/*
 struct SideEffectBeforeView: View {
     var body: some View {
         let message = "appeared"
         return Text(message)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct SideEffectBeforeScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A let binding followed by a return statement. The rewriter uses reversed iteration — it finds the return last and injects there, never touching the let declaration above it.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            SideEffectBeforeView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Side Effect Before View")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct SideEffectBeforeScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Side Effect Before View")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
