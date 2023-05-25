//
//  main.swift
//  ProblemSolving_2751
//
//  Created by YOUJIM on 2023/05/25.
//

import Foundation

var nums = [Int]()

for _ in 1...Int(readLine()!)! {
    nums.append(Int(readLine()!)!)
}

for num in nums.sorted() { print(num) }
