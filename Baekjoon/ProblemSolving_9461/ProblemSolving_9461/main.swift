//
//  main.swift
//  ProblemSolving_9461
//
//  Created by YOUJIM on 2023/07/04.
//

//import Foundation

var memo = [Int](repeating: -1, count: 101)

memo[1] = 1
memo[2] = 1
memo[3] = 1

func padoban(_ idx: Int) -> Int {
    if memo[idx] != -1 { return memo[idx] }
    memo[idx] = padoban(idx - 2) + padoban(idx - 3)
    return memo[idx]
}

for _ in 0..<Int(readLine()!)! { print(padoban(Int(readLine()!)!)) }

