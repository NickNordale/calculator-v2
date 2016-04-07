//
//  main.swift
//  calculator-v2
//
//  Created by Nick Nordale on 4/5/16.
//  Copyright © 2016 Nick Nordale. All rights reserved.
//

import Foundation


// Build a calculator

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


// Array fun

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


// Points - Tuples

func addPoints(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 + b.0, a.1 + b.1)
}

func subtractPoints(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 - b.0, a.1 - b.1)
}


// Points - Dictionaries

func addPoints2(a : Dictionary<String, AnyObject>, b : Dictionary<String, AnyObject>) -> Dictionary<String, Int> {
    let xVal1 = (Int)((a["x"] != nil) ? a["x"]! as! NSNumber : 0)
    let xVal2 = (Int)((b["x"] != nil) ? b["x"]! as! NSNumber : 0)
    let yVal1 = (Int)((a["y"] != nil) ? a["y"]! as! NSNumber : 0)
    let yVal2 = (Int)((b["y"] != nil) ? b["y"]! as! NSNumber : 0)
    
    return [
        "x": xVal1 + xVal2,
        "y": yVal1 + yVal2,
    ]
}

func subtractPoints2(a : Dictionary<String, AnyObject>, b : Dictionary<String, AnyObject>) -> Dictionary<String, Int> {
    let xVal1 = (Int)((a["x"] != nil) ? a["x"]! as! NSNumber : 0)
    let xVal2 = (Int)((b["x"] != nil) ? b["x"]! as! NSNumber : 0)
    let yVal1 = (Int)((a["y"] != nil) ? a["y"]! as! NSNumber : 0)
    let yVal2 = (Int)((b["y"] != nil) ? b["y"]! as! NSNumber : 0)
    
    return [
        "x": xVal1 - xVal2,
        "y": yVal1 - yVal2,
    ]
}