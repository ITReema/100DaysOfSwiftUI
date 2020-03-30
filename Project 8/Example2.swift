//
//  ContentView.swift
//  Moonshot
//
//  Created by Reema on 29/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Pushing new views onto the stack using NavigationLink

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink(destination: Text("Detail \(row)")) {
                    Text("Row \(row)")
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
