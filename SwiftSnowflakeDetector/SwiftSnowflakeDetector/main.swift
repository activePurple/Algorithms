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
let snowflake2 = [7,6,5,4,3,2,1]
var loopCount = 0


// Using the Set Strucuture to track seen integers
func identifySame(values: [Int], n: Int) {
    var found = false
    for each in values {
        loopCount += 1
        if each == n {
            found = true
            break
        }
    }
    if found {
        print("Match found")
    } else {
        print("No match found")
    }
}
func identifyRight(snow1: [Int], snow2: [Int], start: Int) {
    var snow2_index = 0
    for offset in 0..<7 {
        snow2_index = start + offset
        if snow2_index >= 7 {
            snow2_index -= 7
            if snow1[offset] != snow2[snow2_index] {
                print(snow1[offset], snow2[snow2_index])
            } else {
                print("Matching Pair: ", snow1[offset], snow2[snow2_index])
            }
        }
    }
}


identifySame(values: snowflake, n: 1)

identifyRight(snow1: snowflake, snow2: snowflake2, start: 1)
