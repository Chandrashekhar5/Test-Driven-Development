//
//  TddTests.swift
//  TddTests
//
//  Created by Shobhakar Tiwari on 11/22/24.
//


/// TDD -->> Test driven developement
/// you write test cases first  ,and then test ,  it failed , refactor the code and then test , it will pass
/// Fail, Refactor, Success


/// PROBLEM STATEMENT:  Design a calculator in swift having
/// 1. sum
/// 2. sub
/// 3. mul
/// 4. div
// Problem Statement :

//1.for multiples of 3 print “Fizz” instead of the number and for the multiples of 5 print “Buzz“. For numbers which are multiples of both 3 and 5 print “FizzBuzz”.

// consider using Structure here: Calculator is the structure for this
// assume it
// test it
// failed
// refacotor

import XCTest
@testable import Tdd

final class TddTests: XCTestCase {
    var objCalculator: Calculator?
    
    override func setUpWithError() throws {
        objCalculator = Calculator()
    }
    
    override func tearDownWithError() throws {
        objCalculator = nil
    }
    
    func test_sum_successful() {
        let result = objCalculator?.sum(120, 2)
        XCTAssertEqual(result, 100)
    }
    
    func test_sum_of_two_negative_numbers() {
        let result = objCalculator?.sum(-1, -2)
        XCTAssertEqual(result, -3)
    }
    
    func test_sum_of_optional_numbers() {
        let result1 = objCalculator?.sum(1, nil)
        XCTAssertEqual(result1, 0)
        
        let result2 = objCalculator?.sum(nil, 1)
        XCTAssertEqual(result2, 0)
        
        let result3 = objCalculator?.sum(nil, nil)
        XCTAssertEqual(result3, 0)
    }
    
    func testFizz() {
        let result = objCalculator?.fizzBuzz(5)
        XCTAssertEqual(result, "Fizz")
    }
    
    // Test multiples of 5
    func testBuzz() {
        let result = objCalculator?.fizzBuzz(10)
        XCTAssertEqual(result, "Buzz")
    }
    
    // Test multiples of both 3 and 5
    func testFizzBuzz() {
        let result = objCalculator?.fizzBuzz(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    // Test other numbers
    func testOtherNumbers() {
        let result = objCalculator?.fizzBuzz(1)
        let result2 = objCalculator?.fizzBuzz(2)
        let result3 = objCalculator?.fizzBuzz(7)
        let result4 = objCalculator?.fizzBuzz(11)
        XCTAssertEqual(result, "1")
        XCTAssertEqual(result2, "2")
        XCTAssertEqual(result3, "7")
        XCTAssertEqual(result4, "11")
    }
}
