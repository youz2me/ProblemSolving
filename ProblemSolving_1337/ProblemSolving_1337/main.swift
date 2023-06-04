//
//  main.swift
//  ProblemSolving_1337
//
//  Created by YOUJIM on 2023/06/04.
//

import Foundation

var inputs = [Int]()
var start = 0
var end = 0
var minToAdd = Int.max

for _ in 0 ..< Int(readLine()!)! { inputs.append(Int(readLine()!)!) }

inputs.sort()

while start <= end {
    if inputs.count <= end { break }
    
    if inputs[end] - inputs[start] > 4 { start += 1 }
    else {
        let requiredDistance = 5 - (end - start + 1)
        
        if requiredDistance < minToAdd { minToAdd = requiredDistance }
        end += 1
    }
}

print(minToAdd)
