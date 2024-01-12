//
//  main.swift
//  ProblemSolving_2910
//
//  Created by YOUJIM on 1/11/24.
//

import Foundation

var nc = readLine()!.components(separatedBy: " ").map { Int($0)! }
var inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
var nums = [[Int]]()

for input in inputs {
    
}

print(nums)

var sorted = nums.sorted { $0.1 > $1.1 }

print(sorted)

for num in sorted {
    for _ in 0 ..< num.value { print("\(num.key)", terminator: " ")}
}
