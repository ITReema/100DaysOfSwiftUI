//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Reema on 28/06/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
        .titleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
