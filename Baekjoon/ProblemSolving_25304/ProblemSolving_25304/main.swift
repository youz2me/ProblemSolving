//
//  main.swift
//  ProblemSolving_25304
//
//  Created by YOUJIM on 2023/04/12.
//

import Foundation

let x = Int(readLine()!)!
let n = Int(readLine()!)!
var input : [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: n)
var total = 0

for _ in 0..<n {
    let temp = readLine()!.components(separatedBy: " ").map {Int($0)!}
    total = total + temp[0] * temp[1]
}

if x == total {
    print("Yes")
}
else {
    print("No")
}
