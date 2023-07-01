//
//  main.swift
//  ProblemSolving_11651
//
//  Created by YOUJIM on 2023/05/28.
//

import Foundation

var inputs = [[Int]]()

for _ in 1...Int(readLine()!)! { inputs.append(readLine()!.components(separatedBy: " ").map { Int($0)! }) }

inputs.sort { ($0[1], $0[0]) < ($1[1], $1[0]) }

for input in inputs { print("\(input[0]) \(input[1])") }
