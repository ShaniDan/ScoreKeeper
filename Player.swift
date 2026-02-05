//
//  Player.swift
//  ScoreKeeper
//
//  Created by Shakhnoza Mirabzalova on 2/4/26.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    // 2 properties
    var name: String
    var score: Int
}
