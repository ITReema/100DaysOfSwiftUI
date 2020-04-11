//
//  ContentView.swift
//  iExpense
//
//  Created by Reema on 27/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  
//  Sharing SwiftUI state with @ObservedObject
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    @ObservedObject var user = User()

    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")

            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
