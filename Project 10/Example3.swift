//
//  ContentView.swift
//  Cupcake Corner
//
//  Created by Reema on 14/08/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Validating and disabling forms

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }

            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
            .disabled(disableForm)        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
