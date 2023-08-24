//
//  main.swift
//  ProblemSolving_2630
//
//  Created by YOUJIM on 2023/08/24.
//

import Foundation

var num = Int(readLine()!)!
var schedule = [[]] as [[Int]]
var totalArr = Array(repeating: 0, count: 1001)

for _ in 0 ..< num {
    schedule.append(readLine()!.components(separatedBy: " ").map { Int($0)! })
}

for i in stride(from: num, through: 1, by: -1) {
    if schedule[i][0] + i <= num + 1 {
        totalArr[i] = max(totalArr[i + 1], totalArr[i + schedule[i][0]] + schedule[i][1])
    }
    else {
        totalArr[i] = totalArr[i + 1]
    }
}

print(totalArr.max()!)
