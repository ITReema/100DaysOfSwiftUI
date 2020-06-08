//
//  ContentView.swift
//  Flashzilla
//
//  Created by Reema on 15/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  supporting is Reduce Transparency

import SwiftUI

struct ContentView: View {
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(reduceTransparency ? Color.black : Color.black.opacity(0.5))
            .foregroundColor(Color.white)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
