import SwiftUI
import BlueTriangle

// MARK: - Scenario 01: Single expression body

struct DirectView: View {
    var body: some View {
        Text("Hello")
        .bttTrack("\(Self.self)")
    }
}

/*
 struct DirectView: View {
     var body: some View {
         Text("Hello")
             .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct DirectViewScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("The simplest body pattern — a single view expression returned directly. The rewriter appends .bttTrackScreen as a modifier on that expression.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            DirectView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Direct View")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct DirectViewScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Direct View")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */

#Preview {
    DirectViewScreen()
}
