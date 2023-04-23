//
//  main.swift
//  ProblemSolving_2738
//
//  Created by YOUJIM on 2023/04/23.
//

import Foundation

let input = readLine()!.components(separatedBy:" ").map {Int($0)!}
var firstMatrix = [[Int]](repeating: Array(repeating: 0, count: 0), count: input[0])
var secondMatrix = [[Int]](repeating: Array(repeating: 0, count: 0), count: input[0])

for i in 0...input[0] - 1 {
    firstMatrix[i].append(contentsOf: readLine()!.components(separatedBy: " ").map {Int($0)!})
}

for i in 0...input[0] - 1 {
    secondMatrix[i].append(contentsOf: readLine()!.components(separatedBy: " ").map {Int($0)!})
}

for i in 0...input[0] - 1 {
    for j in 0...input[1] - 1 {
        if j == input[1] - 1 { print(firstMatrix[i][j] + secondMatrix[i][j]) }
        else { print(firstMatrix[i][j] + secondMatrix[i][j], terminator: " ") }
    }
}








