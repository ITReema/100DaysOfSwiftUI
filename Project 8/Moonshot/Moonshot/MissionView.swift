//
//  MissionView.swift
//  Moonshot
//
//  Created by Reema on 08/08/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    
    var body: some View {
        GeometryReader { geometry in
                ScrollView(.vertical) {
                    VStack {
                        Image(self.mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geometry.size.width * 0.7)
                            .padding(.top)

                        Text(self.mission.description)
                            .padding()

                        Spacer(minLength: 25)
                    }
                }
            }
            .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")

    static var previews: some View {
        MissionView(mission: missions[0])
    }
}
