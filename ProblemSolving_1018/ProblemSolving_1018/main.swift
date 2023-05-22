//
//  main.swift
//  ProblemSolving_1018
//
//  Created by YOUJIM on 2023/05/21.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var coordinates = [[String]]()
var numToSwitch = 0
var minToSwitch = 10000001

for _ in 0 ..< input[0] {
    coordinates.append(readLine()!.split(separator: "").map { String($0) })
}

for k in 0... input[0] - 8
for j in 0 ..< coordinates.count {
    for i in 0..<coordinates[j].count {
        if j % 2 == 1 {
            if (i % 2 == 0 && coordinates[j][i] == "W") || (i % 2 == 1 && coordinates[j][i] == "B") {
                numToSwitch += 1
            }
        }
        else {
            if (i % 2 == 1 && coordinates[j][i] == "W") || (i % 2 == 0 && coordinates[j][i] == "B") {
                numToSwitch += 1
            }
        }
    }
}

print(numToSwitch)
