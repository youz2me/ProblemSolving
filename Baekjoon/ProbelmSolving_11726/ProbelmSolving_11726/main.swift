//
//  main.swift
//  ProbelmSolving_11726
//
//  Created by YOUJIM on 2023/07/15.
//

import Foundation

var n = Int(readLine()!)!
var memo = [Int](repeating: -1, count: 1001)


if n == 1 { print(1) }
else if n == 2 { print(2) }
else {
    memo[1] = 1
    memo[2] = 2
    
    for i in 3...n { memo[i] = ((memo[i - 2] % 10007) + (memo[i - 1] % 10007)) % 10007 }

    print(memo[n])
}

