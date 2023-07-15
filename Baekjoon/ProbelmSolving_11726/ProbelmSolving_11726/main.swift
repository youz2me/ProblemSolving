//
//  main.swift
//  ProbelmSolving_11726
//
//  Created by YOUJIM on 2023/07/15.
//

import Foundation

var n = Int(readLine()!)!
var memo = [Int](repeating: -1, count: 1001)

memo[1] = 1
memo[2] = 2

for i in 3...n { memo[i] = (memo[i - 2] + memo[i - 1]) % 10007 }

print(memo[n])
