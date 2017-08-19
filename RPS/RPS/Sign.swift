//
//  Sign.swift
//  RPS
//
//  Created by Krasimir Marinov on 8/18/17.
//  Copyright © 2017 Krasimir Marinov. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum Sign {
    case rock,paper,scissors
    var emoji:String{
    switch self{
    case.rock:
        return "✊"
    case.paper:
        return "✋"
    case.scissors:
        return "✌️"
        }
    }
    func doesWin(another:Sign)->String{
        if self.emoji==another.emoji {return "Draw"}
        else if self.emoji=="✊"&&another.emoji=="✌️"{return "PlayerWins"}
        else if self.emoji=="✋"&&another.emoji=="✊"{return "PlayerWins"}
        else if self.emoji=="✌️"&&another.emoji=="✋"{return "PlayerWins"}
        else {return "Player loses"}
        }
}

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
}
}
