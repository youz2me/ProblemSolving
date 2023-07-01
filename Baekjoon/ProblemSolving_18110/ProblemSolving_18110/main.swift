//
//  main.swift
//  ProblemSolving_18110
//
//  Created by YOUJIM on 2023/06/21.
//

import Foundation

let num = Int(readLine()!)!
var inputs = [Int]()

for _ in 0..<num { inputs.append(Int(readLine()!)!) }

if num != 0 {
    inputs.sort()

    let trimmed = Int(round(Double(num) * 0.15))
    let results = inputs[trimmed..<(num - trimmed)]
    var count = 0.0

    for res in results { count += Double(res) }

    print(Int(round(count/Double(results.count))))
}
else { print(0) }

