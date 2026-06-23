import SwiftUI
import BlueTriangle

// MARK: - Scenario 08: switch expression

struct SwitchView: View {
    @State private var tab: Tab = .home
    var body: some View {
        switch tab {
        case .home:    HomeView()
        .bttTrack("\(Self.self)")
        case .profile: ProfileView()
        .bttTrack("\(Self.self)")
        case .extra:   MainView()
        .bttTrack("\(Self.self)")
        }
    }
}

/*
 struct SwitchView: View {
     @State private var tab: Tab = .home
     var body: some View {
         switch tab {
         case .home:
             HomeView()
                 .bttTrackScreen("\(Self.self)")
         case .profile:
             ProfileView()
                 .bttTrackScreen("\(Self.self)")
         case .extra:
             MainView()
                 .bttTrackScreen("\(Self.self)")
         }
     }
 }
 */

struct SwitchScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A switch expression in the body. The rewriter recurses into each case and injects .bttTrackScreen independently, covering all navigation paths.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            SwitchView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Switch")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct SwitchScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Switch")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
