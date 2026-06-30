import SwiftUI

// MARK: - Scenario 03: Explicit return statement

struct ReturnStatementView: View {
    var body: some View {
        return NavigationStack {
            Text("Nav")
        }
    }
}

/*
 struct ReturnStatementView: View {
     var body: some View {
         return NavigationStack {
             Text("Nav")
         }
         .bttTrack("\(Self.self)")
     }
 }
 */

struct ReturnStatementScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("An explicit return statement in the body. The rewriter detects ReturnStmtSyntax and appends .bttTrackScreen to the returned expression, preserving the return keyword.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            ReturnStatementView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Return Statement")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct ReturnStatementScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Return Statement")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
