//
//  main.swift
//  ProblemSolving_17626
//
//  Created by YOUJIM on 2023/07/26.
//

import Foundation

func minSquares(_ n: Int) -> Int {
    var memo = [Int](repeating: 0, count: n + 1)
    
    for i in 1...n {
        var minSquares = 4
        var j = 1
        
        while j * j <= i {
            minSquares = min(minSquares, memo[i - j * j])
            j += 1
        }
        memo[i] = minSquares + 1
    }

    return memo[n]
}

print(minSquares(Int(readLine()!)!))
