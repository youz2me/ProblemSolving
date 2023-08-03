//
//  main.swift
//  ProblemSolving_1931
//
//  Created by YOUJIM on 2023/08/03.
//

import Foundation

var times: [(start: Int, end: Int)] = []
var endTime = 0
var count = 0

for _ in 0 ..< Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1]
    
    times.append((start, end))
}

times.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }

for time in times {
    if time.start >= endTime {
        endTime = time.end
        count += 1
    }
}

print(count)
