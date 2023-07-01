//
//  main.swift
//  ProblemSolving_2563
//
//  Created by YOUJIM on 2023/04/26.
//

import Foundation

var coordinate = [[Int]](repeating: Array(repeating: 0, count: 100), count: 100)
var total = 0

let numOfPaper = Int(readLine()!)!

for _ in 1...numOfPaper {
    var point = readLine()!.components(separatedBy: " ").map {Int($0)!}
    
    for i in 0...9 {
        for j in 0...9 {
            coordinate[point[1] + i][point[0] + j] = 1
        }
    }
}

for i in 0...99 {
    for j in 0...99 {
        total = total + coordinate[i][j]
    }
}

print(total)
