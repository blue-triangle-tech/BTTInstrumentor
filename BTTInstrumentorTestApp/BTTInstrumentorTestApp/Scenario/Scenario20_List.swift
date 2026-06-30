//
//  Scenario20_List.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            VStack {
                Text("B")
            }
            
            VStack {
                Text("C")
            }
            
            VStack {
                Text("D")
            }
        }
    }
}

/*
 struct ListView: View {
     var body: some View {
         List {
             VStack {
                 Text("B")
             }
             
             VStack {
                 Text("C")
             }
             
             VStack {
                 Text("D")
             }
         }
         .bttTrack("\(Self.self)")
     }
 }
 */
