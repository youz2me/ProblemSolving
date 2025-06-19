//
//  main.swift
//  14467
//
//  Created by YOUJIM on 6/19/25.
//

import Foundation

/// 길을 건넜다는건
///
///

var arr = Array(repeating: -1, count: 11)
var count = [Int: Int]()
var result = 0

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    if arr[input[0]] == -1 {
        arr[input[0]] = input[1]
    }
    else if arr[input[0]] != input[1] {
        arr[input[0]] = input[1]
        count[input[0]] = (count[input[0]] ?? 0) + 1
    }
}

for i in count {
    result += i.value
}

print(result)
