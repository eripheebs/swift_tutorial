//
//  Brain.swift
//  FizzBuzz
//
//  Created by Pheby, Erika (UK - London) on 09/01/2017.
//  Copyright © 2017 Pheby, Erika (UK - London). All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0 
    }
    
    func check(number: Int) -> Move {
        if isDivisibleBy(divisor: 15, number: number){
            return Move.FizzBuzz
        } else if isDivisibleBy(divisor: 3, number: number){
            return Move.Fizz
        } else if isDivisibleBy(divisor: 5, number: number){
            return Move.Buzz
        } else {
            return Move.Number
        }
    }
    
}
