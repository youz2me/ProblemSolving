//
//  main.swift
//  ProblemSolving_1181
//
//  Created by YOUJIM on 2023/05/29.
//

import Foundation

var inputs = [String]()

for _ in 0 ..< Int(readLine()!)! { inputs.append(readLine()!) }

inputs = Array(Set(inputs).sorted(by: {$0 < $1}).sorted(by: {$0.count < $1.count}))

for input in inputs { print(input) }
