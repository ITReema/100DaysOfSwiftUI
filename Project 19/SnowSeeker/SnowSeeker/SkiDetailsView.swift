//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Reema on 28/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct SkiDetailsView: View {
    let resort: Resort

    var body: some View {
        VStack {
            Text("Elevation: \(resort.elevation)m")
            Text("Snow: \(resort.snowDepth)cm")
        }
    }
}

struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}
