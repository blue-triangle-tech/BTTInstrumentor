import SwiftUI
import BlueTriangle

// MARK: - Scenario 02: View container (VStack/HStack/ZStack)

struct ViewContainerView: View {
    var body: some View {
        VStack {
            Text("A")
            Text("B")
        }
        .bttTrack("\(Self.self)")
    }
}

/*
 struct ViewContainerView: View {
     var body: some View {
         VStack {
             Text("A")
             Text("B")
         }
         .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct ViewContainerScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A view container (VStack, HStack, ZStack, etc.) as the top-level expression. The rewriter appends .bttTrackScreen to the container itself — not to each child inside it.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            ViewContainerView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("View Container")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct ViewContainerScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("View Container")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
