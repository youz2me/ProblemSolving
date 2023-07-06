//
//  main.swift
//  ProblemSolving_1269
//
//  Created by YOUJIM on 2023/07/06.
//

import Foundation

readLine()
var firstSet = Set(readLine()!.split(separator: " ").map { Int($0)! })
var secondSet = Set(readLine()!.split(separator: " ").map { Int($0)! })

print(firstSet.subtracting(secondSet).count + secondSet.subtracting(firstSet).count)
