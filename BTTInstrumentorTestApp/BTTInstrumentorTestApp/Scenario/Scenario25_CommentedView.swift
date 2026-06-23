//
//  Scenario25_CommentedCode.swift
//  BTTInstrumentorTestApp
//
//  Created by Ashok Singh on 19/06/26.
//

import SwiftUI
import BlueTriangle

struct CommentedView: View {
    var body: some View {
       // VStack {
            myView()
            .bttTrack("\(Self.self)")
       /* }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)*/
    }
    
    func myView() -> some View {
        VStack {
            Text("A")
        }
    }
}
