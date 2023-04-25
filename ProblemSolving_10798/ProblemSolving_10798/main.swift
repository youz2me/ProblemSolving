//
//  main.swift
//  ProblemSolving_10798
//
//  Created by YOUJIM on 2023/04/25.
//

import Foundation

var coordinate = [[Character]](repeating: Array(repeating: "!", count: 15), count: 5)

for i in 0...4 {
    let input = Array(readLine()!)
    
    for j in 0...input.count - 1 {
        coordinate[i][j] = input[j]
    }
}

for i in 0...14 {
    for j in 0...4 {
        if coordinate[j][i] != "!" {
            print(coordinate[j][i], terminator: "")
        }
    }
}
