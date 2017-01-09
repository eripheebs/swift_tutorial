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
    
    func play(input: String) -> Bool {
        if matchesFizzBuzz(input: input, number: score + 1) {
            score += 1
        }
        return matchesFizzBuzz(input: input, number: score)
    }
    
    func matchesFizzBuzz(input: String, number: Int) -> Bool {
        return input == brain.check(number: number)
    }
}
