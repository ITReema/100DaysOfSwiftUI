//
//  ContentView.swift
//  HotProspects
//
//  Created by Reema on 12/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SamplePackage
import SwiftUI

struct ContentView: View {
    let possibleNumbers = Array(1...60)
    
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.joined(separator: ", ")
    }
    
    var body: some View {
        Text(results)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
