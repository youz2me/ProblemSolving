//
//  main.swift
//  ProblemSolving_18110
//
//  Created by YOUJIM on 2023/06/21.
//

import Foundation

var inputs = [Int]()

for _ in 1...Int(readLine()!)! { inputs.append(Int(readLine()!)!) }

inputs.sort()

let trimmed = Int(round(Double(inputs.count) * 0.15))
let result = inputs[trimmed..<(inputs.count - trimmed)]
var count = 0.0

for res in result { count += Double(res) }

print(Int(round(count/Double(result.count))))
