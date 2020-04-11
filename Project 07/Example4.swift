//
//  ContentView.swift
//  iExpense
//
//  Created by Reema on 27/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Storing user settings with UserDefaults
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        Button("Tap count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
