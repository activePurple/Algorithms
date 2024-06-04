//
//  main.swift
//  SwiftSnowflakeDetector
//
//  Created by Tyler Oneil on 6/3/24.
//

import Foundation

var snowflake = [0,1,2,3,4,5]
var loopCount = 0
 

func identifySame(values: [Int]) {
    for row in 0..<values.count {
        for column in 0..<values.count {
            if values[row] == values[column] {
                print("Match Found")
                loopCount += 1
                break
            } 
        }
    }
    print("Loop Count: \(loopCount)")
}

identifySame(values: snowflake)
