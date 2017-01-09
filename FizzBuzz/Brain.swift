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
    
    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number){
            print("HEEEEEEEEEEE!!!!!!!!!")
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 3, number: number){
            return "Fizz"
        } else if isDivisibleBy(divisor: 5, number: number){
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
    
}
