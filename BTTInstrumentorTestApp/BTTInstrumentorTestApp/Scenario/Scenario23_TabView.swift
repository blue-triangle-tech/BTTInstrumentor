//
//  TabViewScenario.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct TabViewScenario: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem { Label("Home", systemImage: "house") }
            Text("Profile")
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

/*
 struct TabViewScenario: View {
     var body: some View {
         TabView {
             Text("Home")
                 .tabItem { Label("Home", systemImage: "house") }
             Text("Profile")
                 .tabItem { Label("Profile", systemImage: "person") }
         }
         .bttTrack("\(Self.self)")
     }
 }
 */
