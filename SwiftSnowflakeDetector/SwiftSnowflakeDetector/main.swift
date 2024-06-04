//
//  main.swift
//  SwiftSnowflakeDetector
//
//  Created by Tyler Oneil on 6/3/24.
//

import Foundation

// Use an array as input
// Array of 8 Ints
let snowflake = [1,2,3,4,5,1,6,7,]

var seen = Set<Int>()

// Using the Set Strucuture to track seen integers
func identifySame() {
    for flake in snowflake {
        if seen.contains(flake) {
            print("Duplicate found \(flake)")
            break
        }
        seen.insert(flake)
    }
}

identifySame()
