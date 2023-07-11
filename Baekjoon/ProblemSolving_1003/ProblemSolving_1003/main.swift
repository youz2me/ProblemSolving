//
//  main.swift
//  ProblemSolving_1003
//
//  Created by YOUJIM on 2023/07/11.
//

import Foundation

var memoZero = [Int](repeating: -1, count: 41)
var memoOne = [Int](repeating: -1, count: 41)

memoZero[0] = 1
memoZero[1] = 0
memoOne[0] = 0
memoOne[1] = 1

for i in 2...40 {
    memoOne[i] = memoOne[i - 1] + memoOne[i - 2]
    memoZero[i] = memoZero[i - 1] + memoZero[i - 2]
}

for _ in 0..<Int(readLine()!)! {
    let num = Int(readLine()!)!
    print("\(memoZero[num]) \(memoOne[num])")
}

