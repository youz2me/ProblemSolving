//
//  main.swift
//  ProblemSolving_9086
//
//  Created by YOUJIM on 2023/04/17.
//

import Foundation

let i = Int(readLine()!)!

for _ in 1...i {
    let sentence = readLine()!
    let first = sentence.startIndex
    let last = sentence.index(before: sentence.endIndex)
    print(sentence[first], terminator: "")
    print(sentence[last])
}



