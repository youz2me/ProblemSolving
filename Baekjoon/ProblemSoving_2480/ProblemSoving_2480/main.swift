//
//  main.swift
//  ProblemSoving_2480
//
//  Created by YOUJIM on 2023/04/08.
//

import Foundation

let dice = readLine()!.components(separatedBy: " ").map {Int($0)!}
let countedArray = NSCountedSet(array: dice)

var sameCount = 0
var totalReward = 0

for i in 1...6 {
    if countedArray.count(for: i) == 1 {
        if sameCount <= i {
            sameCount = i
            totalReward = i * 100
        }
    }
    else if countedArray.count(for: i) == 2 {
        totalReward = i * 100 + 1000
        break
    }
    else if countedArray.count(for: i) == 3 {
        totalReward = i * 1000 + 10000
        break
    }
}

print(totalReward)
