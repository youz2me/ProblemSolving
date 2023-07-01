//
//  main.swift
//  ProblemSolving_2444
//
//  Created by YOUJIM on 2023/04/19.
//

import Foundation

let input = Int(readLine()!)!

for i in 1...input {
    let temp = String(repeating: " ", count: input - i) + String(repeating: "*", count: 2 * i - 1)
    print(temp)
}

for i in 1..<input {
    let temp = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (input - i) - 1)
    print(temp)
}

