//
//  ContentView.swift
//  Bookworm
//
//  Created by Reema on 18/08/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Using size classes with AnyView type erasure

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        if sizeClass == .compact {
            return AnyView(VStack {
                Text("Active size class:")
                Text("COMPACT")
            }
            .font(.largeTitle))
        } else {
            return AnyView(HStack {
                Text("Active size class:")
                Text("REGULAR")
            }
            .font(.largeTitle))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
