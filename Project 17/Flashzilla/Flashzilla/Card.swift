//
//  Card.swift
//  Flashzilla
//
//  Created by Reema on 17/10/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import Foundation

struct Card {
    let prompt: String
    let answer: String

    static var example: Card {
        Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
    }
}
