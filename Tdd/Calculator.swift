//
//  Calculator.swift
//  Tdd
//
//  Created by Shobhakar Tiwari on 11/22/24.
//


struct Calculator {
    func sum(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        if a > 100 {
            return 100
        }
        return a + b
    }
    func fizzBuzz(_ number: Int) -> String {
        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}
