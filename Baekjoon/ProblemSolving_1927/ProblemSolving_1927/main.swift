//
//  main.swift
//  ProblemSolving_1927
//
//  Created by YOUJIM on 2023/07/30.
//

import Foundation

let n = Int(readLine()!)!
var heap: [Int] = []

for _ in 0 ..< n {
    let x = Int(readLine()!)!

    
    if x == 0 {
        if !heap.isEmpty { print(heap.removeFirst()) }
        else { print(0) }
    }
    else {
        heap.append(x)
        heap.sort()
    }
}
