import SwiftUI

// MARK: - Scenario 05: withAnimation with trailing closure

struct WithAnimationTrailingView: View {
    var body: some View {
        withAnimation(.easeIn) {
            Text("Animated")
        }
    }
}

/*
 struct WithAnimationTrailingView: View {
     var body: some View {
         withAnimation(.easeIn) {
             Text("Animated")
                 .bttTrackScreen("\(Self.self)")
         }
     }
 }
 */

struct WithAnimationTrailingScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A withAnimation call with a trailing closure. The rewriter has a special case for this pattern — it injects .bttTrackScreen inside the closure rather than on the outer call result.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            WithAnimationTrailingView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("With Animation Trailing")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct WithAnimationTrailingScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("With Animation Trailing")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
