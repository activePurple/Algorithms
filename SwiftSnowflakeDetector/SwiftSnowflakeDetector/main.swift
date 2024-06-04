//
//  main.swift
//  SwiftSnowflakeDetector
//
//  Created by Tyler Oneil on 6/3/24.
//

import Foundation

// Use an array as input
// Array of 8 Ints
let snowflake = [1,2,3,4,5,6,7]
var loopCount = 0

var seen = Set<Int>()

// Using the Set Strucuture to track seen integers
func identifySame(values: Array<Int>, n: Int) {
    for each in values {
        if values[each] == n {
            print("Match Found")
            break
        }
        seen.insert(each)
    }
}

identifySame(values: snowflake, n: 5)
