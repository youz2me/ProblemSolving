//
//  main.swift
//  ProblemSolving_1074
//
//  Created by YOUJIM on 2023/07/29.
//

import Foundation

func recursion(_ N: Int, _ r: Int, _ c: Int) -> Int {
    if N == 0 { return 0 }
    
    return 2 * (r % 2) + (c % 2) + 4 * recursion(N - 1, r / 2, c / 2)
}

let values = readLine()!.split(separator: " ").map { Int($0)! }

print(recursion(values[0], values[1], values[2]))
