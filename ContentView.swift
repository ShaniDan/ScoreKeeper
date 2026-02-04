//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Shakhnoza Mirabzalova on 2/3/26.
//

import SwiftUI

struct ContentView: View {
    // Model the players property as a String because we only need each player's name
    // Private means only this View struct can read or modify players
    @State private var players = ["Anna", "Josh", "Elly"]
    
    var body: some View {
        VStack {
            Text(players[0])
            Text(players[1])
            Text(players[2])
            
            ForEach(players, id: \.self) { name in
                Text(name)
            }
        }
    }
}

#Preview {
    ContentView()
}
