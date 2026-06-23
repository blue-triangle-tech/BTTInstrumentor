import SwiftUI

// MARK: - Scenario 13: Deep nesting exceeding injectionDepth (rewriter skips)

struct DeepNestingView: View {
    @State private var a = true
    @State private var b = true
    @State private var c = true
    @State private var d = true
    var body: some View {
        if a {
            if b {
                if c {
                    if d {
                        Text("Deep")
                    }
                }
            }
        }
    }
}

/*
   "DeepNestingView skipped — body too complex, instrument manually"
 */

struct DeepNestingScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Four levels of if nesting, which exceeds injectionDepth = 3. The rewriter emits a warning and skips this view entirely. Each level of if/switch/guard/#if costs one depth unit.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            DeepNestingView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Deep Nesting")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct DeepNestingScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Deep Nesting")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
