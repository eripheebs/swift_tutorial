//
//  GameTests.swift
//  FizzBuzzTests
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
    
    func testTheGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testIncremetingScore() {
        game.play(input: Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight(){
        game.score = 2
        let result = game.play(input: Move.Fizz)
        XCTAssertEqual(result.right, true)
    }
    
    func testIfMoveIsWrong(){
        game.score = 1
        let result = game.play(input: Move.Fizz)
        XCTAssertEqual(result.right, false)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfBuzzIsRight(){
        game.score = 4
        let result = game.play(input: Move.Buzz)
        XCTAssertEqual(result.right, true)
        XCTAssertTrue(game.score == 5)
    }
    
    func testIfFizzBuzzWorks(){
        game.score = 14
        let result = game.play(input: Move.FizzBuzz)
        XCTAssertEqual(result.right, true)
        XCTAssertTrue(game.score == 15)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(input: Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(input: Move.Number)
        XCTAssertNotNil(response.score)
    }
    
}
