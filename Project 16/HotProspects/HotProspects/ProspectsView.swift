//
//  ProspectView.swift
//  HotProspects
//
//  Created by Reema on 14/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ProspectView: View {
    enum FilterType {
        case none, contacted, uncontacted
    }
    @EnvironmentObject var prospects: Prospects
    let filter: FilterType
    var title: String {
        switch filter {
        case .none:
            return "Everyone"
        case .contacted:
            return "Contacted people"
        case .uncontacted:
            return "Uncontacted people"
        }
    }
    var body: some View {
        NavigationView {
            NavigationView {
                Text("People: \(prospects.people.count)")
                    .navigationBarTitle(title)
                    .navigationBarItems(trailing: Button(action: {
                        let prospect = Prospect()
                        prospect.name = "Paul Hudson"
                        prospect.emailAddress = "paul@hackingwithswift.com"
                        self.prospects.people.append(prospect)
                    }) {
                        Image(systemName: "qrcode.viewfinder")
                        Text("Scan")
                    })
            }
            .navigationBarTitle(title)
        }
    }
}

struct ProspectView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
    }
}
