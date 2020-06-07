//
//  ContentView.swift
//  Flashzilla
//
//  Created by Reema on 15/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
