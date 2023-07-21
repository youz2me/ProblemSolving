//
//  main.swift
//  ProblemSolving_11727
//
//  Created by YOUJIM on 2023/07/21.
//

import Foundation

let num = Int(readLine()!)!

var memo : [Int] = Array(repeating: 0, count: (num + 2))
memo[1] = 1
memo[2] = 3

if num <= 2 { print(memo[num]) }
else {
    for i in 3 ... num {
        if i % 2 == 0 { memo[i] = (2 * memo[i - 1] +  1) % 10007 }
        else { memo[i] = (2 * memo[i - 1] -  1) % 10007 }
    }
    print(memo[num])
}
