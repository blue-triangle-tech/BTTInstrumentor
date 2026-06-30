//
//  ScrollViewScenario.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct ScrollViewScenario: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Item A")
                Text("Item B")
                Text("Item C")
            }
        }
    }
}

/*
 struct ScrollViewScenario: View {
     var body: some View {
         ScrollView {
             VStack {
                 Text("Item A")
                 Text("Item B")
                 Text("Item C")
             }
         }
         .bttTrack("\(Self.self)")
     }
 }
 */
