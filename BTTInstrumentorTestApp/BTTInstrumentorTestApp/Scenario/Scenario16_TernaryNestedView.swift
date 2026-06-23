//
//  TernaryNestedView.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct TernaryNestedView: View {
    @State private var state = 0
    var body: some View {
        state == 0 ? AnyView(Text("Zero")) :
        state == 1 ? AnyView(Text("One")) :
                     AnyView(Text("Other"))
    }
}

/*
 struct TernaryNestedView: View {
     @State private var state = 0
     var body: some View {
         state == 0 ? AnyView(Text("Zero")
                          .bttTrackScreen("\(Self.self)")) :
         state == 1 ? AnyView(Text("One")
                          .bttTrackScreen("\(Self.self)")) :
                      AnyView(Text("Other")
                          .bttTrackScreen("\(Self.self)"))
     }
 }
 */

struct TernaryNestedScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A nested ternary expression. The rewriter processes ternaries recursively — it injects .bttTrackScreen into every leaf branch, so all possible outcomes are tracked.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            TernaryNestedView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Nested Ternary")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct TernaryNestedScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Nested Ternary")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
