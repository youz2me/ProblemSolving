//
//  main.swift
//  ProblemSolving_5597
//
//  Created by YOUJIM on 2023/04/14.
//

import Foundation

var numbers = [Int](repeating: 0, count: 30)

for _ in 0..<28 {
    let temp = Int(readLine()!)!
    numbers[temp - 1] = 1
}

for i in 0..<30 {
    if numbers[i] == 0 {
        print(i+1)
    }
}
