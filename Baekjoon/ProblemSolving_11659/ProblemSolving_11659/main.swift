//
//  main.swift
//  ProblemSolving_11659
//
//  Created by YOUJIM on 2023/07/27.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var dp = [Int](repeating: 0, count: nm[0] + 1)

for k in 1 ... nm[0] {
    dp[k] = dp[k - 1] + nums[k - 1]
}
    
for _ in 0 ..< nm[1] {
    let section = readLine()!.split(separator: " ").map { Int($0)! }
    let i = section[0]
    let j = section[1]
    print(dp[j] - dp[i - 1])
}
