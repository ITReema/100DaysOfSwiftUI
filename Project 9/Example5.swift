//
//  ContentView.swift
//  Drawing
//
//  Created by Reema on 11/08/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Creative borders and fills using ImagePaint

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .frame(width: 300, height: 300)
            .border(Color.red, width: 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
