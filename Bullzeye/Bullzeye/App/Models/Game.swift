//
//  Game.swift
//  Bullzeye
//
//  Created by P.M. Student on 1/6/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(self.target - sliderValue)
        let awardedPoints = 100 - difference
        return awardedPoints
}
}
