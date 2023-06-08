//
//  RosterValueView.swift
//  League Companion
//
//  Created by Yaniv Naggar on 5/23/23.
//

import SwiftUI

struct Player {
    var name: String = ""
    var coins: Int = 0
}

struct RosterValueView: View {
    @State private var players = Array(repeating: Player(), count: 16)
    
    private let positionLabels = ["Quarterback", "Running Back 1", "Running Back 2", "Wide Receiver 1", "Wide Receiver 2", "Tight End", "Flex", "Defense", "Kicker", "Bench 1", "Bench 2", "Bench 3", "Bench 4", "Bench 5", "Bench 6"]

    var body: some View {
        VStack {
            Text("Roster Value")
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding()

            List {
                ForEach(0..<players.count, id: \.self) { index in
                    HStack {
                        TextField("\(index < positionLabels.count ? positionLabels[index] : "Position \(index+1)")", text: $players[index].name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        Picker(selection: $players[index].coins, label: Text("Coins")) {
                            ForEach(1...100, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .labelsHidden()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .clipped()
                    }
                }
            }

            Text("Total Value: \(players.map { $0.coins }.reduce(0, +)) Coins")
                .font(.title)
                .padding()
        }
        .navigationBarTitle("Roster")
    }
}
