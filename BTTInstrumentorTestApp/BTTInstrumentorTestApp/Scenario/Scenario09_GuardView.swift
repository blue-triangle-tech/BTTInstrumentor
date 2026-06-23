import SwiftUI

// MARK: - Scenario 09: guard with early return

struct GuardView: View {
    var item: String? = "hello"
    var body: some View {
        guard let item else {
            return AnyView(Text("Empty"))
        }
        return AnyView(Text(item))
    }
}

/*
 struct GuardView: View {
     var item: String? = "hello"
     var body: some View {
         guard let item else {
             return AnyView(Text("Empty")
                 .bttTrackScreen("\(Self.self)"))
         }
         return AnyView(Text(item)
             .bttTrackScreen("\(Self.self)"))
     }
 }
 */

struct GuardScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A guard statement with an early return. The rewriter injects into ALL return paths — the happy path and the guard-fail branch both get .bttTrackScreen, inside AnyView(...).")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            GuardView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Guard")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct GuardScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Guard")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
