//
//  main.swift
//  ProblemSolving_10828
//
//  Created by YOUJIM on 5/1/24.
//

import Foundation

var stack = [Int]()

for _ in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "top":
        if let top = stack.last { print(top) }
        else { print("-1") }
    case "size":
        print(stack.count)
    case "empty":
        if stack.isEmpty == true { print("1") }
        else { print("0") }
    case "pop":
        if let pop = stack.popLast() { print(pop) }
        else { print("-1") }
    default:
        stack.append(Int(input[1])!)
    }
}

