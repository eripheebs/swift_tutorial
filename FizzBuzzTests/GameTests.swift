//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Pheby, Erika (UK - London) on 09/01/2017.
//  Copyright © 2017 Pheby, Erika (UK - London). All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func thisIsTrue(){
        XCTAssertEqual(true, true)
    }
    
    func theGameStartsAtZero(){
        XCTAssertTrue(game.score == 0)
    }
    
}
