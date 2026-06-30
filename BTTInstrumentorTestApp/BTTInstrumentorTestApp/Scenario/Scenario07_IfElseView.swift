import SwiftUI

// MARK: - Scenario 07: if/else branches

struct IfElseView: View {
    @State private var isLoggedIn = false
    var body: some View {
        if isLoggedIn {
            HomeView()
        } else {
            LoginView()
        }
    }
}

/*
 struct IfElseView: View {
     @State private var isLoggedIn = false
     var body: some View {
         if isLoggedIn {
             HomeView()
                 .bttTrack("\(Self.self)")
         } else {
             LoginView()
                 .bttTrack("\(Self.self)")
         }
     }
 }
 */

struct IfElseScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("An if/else expression in the body. The rewriter recurses into each branch and injects .bttTrackScreen independently, ensuring the screen is tracked whichever branch is active.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            IfElseView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("If Else")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct IfElseScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("If Else")
             .navigationBarTitleDisplayMode(.large)
             .bttTrack("\(Self.self)")
     }
 }
 */
