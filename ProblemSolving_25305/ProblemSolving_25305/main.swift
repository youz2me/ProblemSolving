//
//  main.swift
//  ProblemSolving_25305
//
//  Created by YOUJIM on 2023/05/24.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted()

print(scores[scores.count - input[1]])
