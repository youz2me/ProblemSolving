//
//  main.swift
//  ProblemSolving_11399
//
//  Created by YOUJIM on 2023/07/03.
//

import Foundation

readLine()
var times = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var resultTime = 0

while !times.isEmpty {
    resultTime += times.reduce(0, +)
    times.removeLast()
}

print(resultTime)
