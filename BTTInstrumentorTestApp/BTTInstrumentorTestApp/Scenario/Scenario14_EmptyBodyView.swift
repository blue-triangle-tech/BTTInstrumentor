import SwiftUI

// MARK: - Scenario 14: EmptyView body (rewriter skips injection)

struct EmptyBodyView: View {
    var body: some View {
        EmptyView()
    }
}

/*
 isViewExpression() returns false for any FunctionCallExprSyntax
 whose calledExpression is a DeclReferenceExprSyntax named "EmptyView".
 The file is left unchanged.
 */

struct EmptyBodyScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A body returning EmptyView(). The rewriter explicitly excludes this pattern — appending a modifier to EmptyView() is pointless since it renders nothing visible on screen.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            Text("(EmptyView renders nothing)")
                .font(.caption)
                .foregroundStyle(.tertiary)
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Empty Body")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 After injection:

 struct EmptyBodyScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Empty Body")
             .navigationBarTitleDisplayMode(.large)
             .bttTrack("\(Self.self)")
     }
 }
 */
