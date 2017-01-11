//
//  Game.swift
//  FizzBuzz
//
//  Created by Pheby, Erika (UK - London) on 09/01/2017.
//  Copyright © 2017 Pheby, Erika (UK - London). All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        brain = Brain()
        score = 0
        super.init()
    }
    
    func play(input: Move) -> (right: Bool, score: Int) {
        if matchesFizzBuzz(input: input, number: score + 1) {
            score += 1
            return (true, score)
        } else {
            return(false, score)
        }
    }

    
    func matchesFizzBuzz(input: Move, number: Int) -> Bool {
        return input == brain.check(number: number)
    }
}
