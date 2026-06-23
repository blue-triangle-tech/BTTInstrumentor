//
//  NavigationViewScenario.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI
import BlueTriangle

struct NavigationViewScenario: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Inside Navigation")
            }
        }
        .bttTrack("\(Self.self)")
    }
}

/*
 struct NavigationViewScenario: View {
     var body: some View {
         NavigationStack {
             VStack {
                 Text("Inside Navigation")
             }
         }
         .bttTrackScreen("\(Self.self)")
     }
 }
 */
