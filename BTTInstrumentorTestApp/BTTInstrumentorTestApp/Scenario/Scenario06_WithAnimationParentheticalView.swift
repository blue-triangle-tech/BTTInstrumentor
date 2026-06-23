import SwiftUI

// MARK: - Scenario 06: withAnimation with parenthetical closure

struct WithAnimationParentheticalView: View {
    var body: some View {
        withAnimation(.easeIn, {
            Text("Parenthetical")
        })
    }
}

/*
 struct WithAnimationParentheticalView: View {
     var body: some View {
         withAnimation(.easeIn, {
             Text("Parenthetical")
         })
         .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct WithAnimationParentheticalScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A withAnimation call with the closure passed as a regular argument. The special-case handler only fires on trailing closures, so the modifier is appended to the outer call result instead — which works because withAnimation<Result> returns the closure's return type.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            WithAnimationParentheticalView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("With Animation Parenthetical")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct WithAnimationParentheticalScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("With Animation Parenthetical")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
