//
//  main.swift
//  calculator-v2
//
//  Created by Nick Nordale on 4/5/16.
//  Copyright © 2016 Nick Nordale. All rights reserved.
//

// use tuples to represent x/y point pairs
// create two functions for adding and subtracting points
//   (1,2) + (3,4) = (4,6)
//   (1,2) - (3,4) = (-2,-2)
// now use Dictionaries to represent points
//   "x" is the x coordinate, "y" is the y coordinate
// create two functions for adding and subtracting points
//   (1,2) + (3,4) = (4,6)
//   (1,2) - (3,4) = (-2,-2)
// handle dictionaries without "x" or "y" without crashing
// handle dictionaries with Double values without crashing

import Foundation

func add(first : Int, second : Int) -> Int {
    return first + second
}

func subtract(first : Int, second : Int) -> Int {
    return first - second
}

func multiply(first : Int, second : Int) -> Int {
    return first * second
}

func divide(first : Int, second : Int) -> Int {
    return first / second
}

func math(first : Int, second : Int, op : (Int, Int) -> Int) -> Int {
    return op(first, second)
}

func addArr(arrIn : [Int]) -> Int {
    var out = 0
    for index in 0...(arrIn.count - 1) {
        out += arrIn[index]
    }
    return out
}

func multiplyArr(arrIn : [Int]) -> Int {
    var out = 1
    for index in 0...(arrIn.count - 1) {
        out = out * arrIn[index]
    }
    return out
}

func count(arrIn : [Int]) -> Int {
    var out = 0
    for _ in 0...(arrIn.count - 1) {
        out += 1
    }
    return out
}

func avg(arrIn : [Int]) -> Int {
    var tot = 0
    for index in 0...(arrIn.count - 1) {
        tot += arrIn[index]
    }
    return tot/arrIn.count
}

func math2(arrIn : [Int], op : ([Int]) -> Int) -> Int {
    return op(arrIn)
}