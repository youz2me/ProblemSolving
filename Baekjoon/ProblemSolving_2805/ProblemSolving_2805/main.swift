//
//  main.swift
//  ProblemSolving_2805
//
//  Created by YOUJIM on 2023/08/01.
//

import Foundation

var nm = readLine()!.split(separator: " ").compactMap { Int(String($0))! }
var inputs = readLine()!.split(separator: " ").compactMap { Int(String($0))! }

var left = 1
var right = inputs.max()!
var mid = 0
var total = 0

while left < right {
    mid = (left + right) / 2
    total = inputs.map { $0 > mid ? $0 - mid : 0 }.reduce(0, +)
    
    if total < nm[1] { right = mid }
    else { left = mid + 1 }
}

print(right - 1)
