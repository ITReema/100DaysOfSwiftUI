//
//  ContentView.swift
//  Moonshot
//
//  Created by Reema on 29/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  How ScrollView lets us work with scrolling data

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
