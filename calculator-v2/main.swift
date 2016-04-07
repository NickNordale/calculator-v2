//
//  main.swift
//  calculator-v2
//
//  Created by Nick Nordale on 4/5/16.
//  Copyright © 2016 Nick Nordale. All rights reserved.
//


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

func addPoints(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 + b.0, a.1 + b.1)
}

func subtractPoints(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 - b.0, a.1 - b.1)
}

var pointA = [
    "x": 1,
    "y": 2
]

var pointB = [
    "x": 3,
    "y": 4
]

// handle dictionaries without "x" or "y" without crashing
// handle dictionaries with Double values without crashing

func addPoints2(a : Dictionary<String, Int>, b : Dictionary<String, Int>) -> Dictionary<String, Int> {
    return [
        "x": ((a["x"] != nil) ? a["x"]! : 0) + ((b["x"] != nil) ? b["x"]! : 0),
        "y": ((a["y"] != nil) ? a["y"]! : 0) + ((b["y"] != nil) ? b["y"]! : 0)
    ]
}

func subtractPoints2(a : Dictionary<String, Int>, b : Dictionary<String, Int>) -> Dictionary<String, Int> {
    return [
        "x": ((a["x"] != nil) ? a["x"]! : 0) - ((b["x"] != nil) ? b["x"]! : 0),
        "y": ((a["y"] != nil) ? a["y"]! : 0) - ((b["y"] != nil) ? b["y"]! : 0)
    ]
}

print(addPoints2(pointA, b: pointB))
print(subtractPoints2(pointA, b: pointB))











