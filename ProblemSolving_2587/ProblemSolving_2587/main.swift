//
//  main.swift
//  ProblemSolving_2587
//
//  Created by YOUJIM on 2023/05/23.
//

import Foundation

var n = [Int]()
var tot = 0

for i in 0..<5 {
    n.append(Int(readLine()!)!)
    tot += n[i]
}

print(tot / 5)
print(n.sorted()[2])
