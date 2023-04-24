//
//  main.swift
//  ProblemSolving_2566
//
//  Created by YOUJIM on 2023/04/24.
//

import Foundation

var coordinate = [[Int]](repeating: Array(repeating: 0, count: 9), count: 9)
var eachMaxValue = [Int](repeating: 0, count: 9)

func SearchIndex(value: Int) {
    for i in 0...8 {
        for j in 0...8 {
            if coordinate[i][j] == value {
                print("\(i+1) \(j+1)")
                break
            }
        }
    }
}

for i in 0...8 {
    let input = readLine()!.components(separatedBy: " ").map {Int($0)!}
    coordinate[i] = input
    eachMaxValue[i] = (coordinate[i].max())!
}

print((eachMaxValue.max())!)
SearchIndex(value: eachMaxValue.max()!)
