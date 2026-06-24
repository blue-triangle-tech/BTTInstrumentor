//
//  Scenario18_FunctionCall.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI

struct FunctionCall1: View {
    var body: some View {
        myView()
    }
    
    func myView() -> some View {
        VStack {
            Text("A")
        }
    }
}

/*
struct FunctionCall1: View {
    var body: some View {
        myView()
        .bttTrack("\(Self.self)")
    }
    
    func myView() -> some View {
        VStack {
            Text("A")
        }
    }
}*/

struct ViewContainerView2: View {
    @State private var flag = false
    var body: some View {
        if flag {
            myView()
        } else {
            myView()
        }
    }
    
    func myView() -> some View {
        VStack {
            Text("A")
        }
    }
}

/*
struct ViewContainerView2: View {
    @State private var flag = false
    var body: some View {
        if flag {
            myView()
            .bttTrack("\(Self.self)")
        } else {
            myView()
            .bttTrack("\(Self.self)")
        }
    }
    
    func myView() -> some View {
        VStack {
            Text("A")
        }
    }
}
*/
