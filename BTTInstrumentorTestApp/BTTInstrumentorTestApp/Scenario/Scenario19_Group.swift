//
//  Scenario19_Group.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//


import SwiftUI

struct GroupView: View {
    var body: some View {
        Group {
            VStack {
                Text("A")
            }
        }
    }
}

/*
 struct GroupView: View {
    var body: some View {
        Group {
            VStack {
                Text("A")
            }
        }
        .bttTrack("\(Self.self)")
    }
}
 */
