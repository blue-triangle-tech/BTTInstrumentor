import SwiftUI
import BlueTriangle

// MARK: - Scenario 11: @ViewBuilder multiple top-level views

struct MultiStatementView: View {
    var body: some View {
        HeaderView()
        MainView()
        FooterView()
        .bttTrack("\(Self.self)")
    }
}

/*
 struct MultiStatementView: View {
     var body: some View {
         HeaderView()
         MainView()
         FooterView()
             .bttTrackScreen("\(Self.self)")
     }
 }
 */

struct MultiStatementScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A @ViewBuilder body with multiple top-level view expressions. The rewriter uses reversed iteration and injects on the last statement only — earlier views are left untouched.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            VStack {
                MultiStatementView()
            }
            .frame(maxWidth: .infinity)
            .padding()
            Spacer()
        }
        .navigationTitle("Multi Statement")
        .navigationBarTitleDisplayMode(.large)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct MultiStatementScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Multi Statement")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
