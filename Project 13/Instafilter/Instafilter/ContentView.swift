//
//  ContentView.swift
//  Instafilter
//
//  Created by Reema on 02/09/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false

    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()

            Button("Select Image") {
               self.showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker()
        }
    }
}
