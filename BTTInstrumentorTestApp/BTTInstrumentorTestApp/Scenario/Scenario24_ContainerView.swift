//
//  ContainerViewScenario.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI
import BlueTriangle

struct ContainerViewScenario: View {
    var body: some View {
        CardContainer {
            Text("Title")
            Text("Subtitle")
        }
        .bttTrack("\(Self.self)")
    }
}

struct CardContainer<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack {
            content
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
        .bttTrack("\(Self.self)")
    }
}

/*
 struct ContainerViewScenario: View {
     var body: some View {
         CardContainer {
             Text("Title")
             Text("Subtitle")
         }
         .bttTrackScreen("\(Self.self)")
     }
 }
 */
