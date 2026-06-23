//
//  WithGuardAndElseView.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct WithGuardAndElseView: View {
    var data: String? = "data"
    var body: some View {
        guard let data else {
            return AnyView(EmptyView())
        }
        return AnyView(Text(data))
    }
}

/*
 struct WithGuardAndElseView: View {
     var data: String? = "data"
     var body: some View {
         guard let data else {
             return AnyView(EmptyView()
                 .bttTrackScreen("\(Self.self)"))
         }
         return AnyView(Text(data)
             .bttTrackScreen("\(Self.self)"))
     }
 }
 */

struct WithGuardAndElseScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A guard with EmptyView in the else path and a real view in the happy path. Both return paths are injected — the guard-fail EmptyView and the happy-path Text each get .bttTrackScreen inside AnyView(...).")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            Divider()
            WithGuardAndElseView()
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
        }
        .navigationTitle("Guard With Else")
        .navigationBarTitleDisplayMode(.large)
    }
}

/*
 struct WithGuardAndElseScreen: View {
     var body: some View {
         VStack(alignment: .leading, spacing: 16) { ... }
             .navigationTitle("Guard With Else")
             .navigationBarTitleDisplayMode(.large)
             .bttTrackScreen("\(Self.self)")
     }
 }
 */
