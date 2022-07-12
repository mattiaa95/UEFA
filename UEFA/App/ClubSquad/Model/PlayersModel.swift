//
//  PlayersModel.swift
//  UEFA
//
//  Created by Mattia La Spina on 22/4/22.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - PlayersModel
class PlayersModel {
    var squad: [Squad]

    init(squad: [Squad]) {
        self.squad = squad
    }
}

// MARK: - Squad
class Squad {
    var section: String
    var players: [String]

    init(section: String, players: [String]) {
        self.section = section
        self.players = players
    }
}

// MARK: MockedData - PlayersModel
extension PlayersModel {
    static var squadMocked: PlayersModel {
        return PlayersModel.init(squad:[
            Squad.init(section: "Goalkeepers", players: ["item1", "item2", "item3", "item4"]),
            Squad.init(section: "Defenders", players: ["item1", "item2", "item3", "item4"]),
            Squad.init(section: "Midfielders", players: ["item1", "item2", "item3", "item4"]),
            Squad.init(section: "Fordwars", players: ["item1", "item2", "item3", "item4"]),
            Squad.init(section: "Coach", players: ["item1"])
        ])
    }
}

// MARK: - Suggested JSON with out players data
/*
{
"squad": [{
        "section": "Goalkeepers",
        "players": ["item1", "item2", "item3", "item4"]
    },
    {
        "section": "Defenders",
        "players": ["item1", "item2", "item3", "item4"]
    },
    {
        "section": "Midfielders",
        "players": ["item1", "item2", "item3", "item4"]
    },
    {
        "section": "Fordwars",
        "players": ["item1", "item2", "item3", "item4"]
    },
    {
        "section": "Coach",
        "players": ["item1"]
    }
]
}
*/
