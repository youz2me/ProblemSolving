//
//  main.swift
//  ProblemSolving_1463
//
//  Created by YOUJIM on 2023/07/25.
//

import Foundation

let num = Int(readLine()!)!

if num == 1 { print(0) }
else if num == 2 { print(1) }
else if num == 3 { print(1) }
else {
    var memo = [Int](repeating: 0, count: num + 1)
    memo[1] = 0
    memo[2] = 1
    memo[3] = 1
    
    for i in 4...num {
        memo[i] = memo[i - 1] + 1
        if i % 2 == 0 { memo[i] = min(memo[i], memo[i/2] + 1) }
        if i % 3 == 0 { memo[i] = min(memo[i], memo[i/3] + 1) }
    }
    
    print(memo[num])
}
