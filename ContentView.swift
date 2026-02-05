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
    
    @State private var players: [Player] = [
        Player(name: "Anna", score: 0),
        Player(name: "Josh", score: 0),
        Player(name: "Tom", score: 0)
]
    @State var scores: [Int] = [0,0,0]
    
    var body: some View {
       
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
                .gridColumnAlignment(.leading)
            // Why $player binding is used inside the closure?
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
