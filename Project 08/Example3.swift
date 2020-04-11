//
//  ContentView.swift
//  Moonshot
//
//  Created by Reema on 29/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Working with hierarchical Codable data

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """

            struct User: Codable {
                var name: String
                var address: Address
            }

            struct Address: Codable {
                var street: String
                var city: String
            }
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
