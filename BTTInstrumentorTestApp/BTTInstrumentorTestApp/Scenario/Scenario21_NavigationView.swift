//
//  NavigationViewScenario.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct NavigationViewScenario: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Inside Navigation")
            }
        }
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
         .bttTrack("\(Self.self)")
     }
 }
 */
