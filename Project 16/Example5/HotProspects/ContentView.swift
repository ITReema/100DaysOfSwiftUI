//
//  ContentView.swift
//  HotProspects
//
//  Created by Reema on 12/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("example")
        .interpolation(.none)
        .resizable()
        .scaledToFit()
        .frame(maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
