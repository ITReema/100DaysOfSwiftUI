//
//  ContentView.swift
//  iExpense
//
//  Created by Reema on 27/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  Showing and hiding views
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
