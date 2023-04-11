//
//  main.swift
//  ProblemSolving_10807
//
//  Created by YOUJIM on 2023/04/11.
//

import Foundation

let numOfInt = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map {Int($0)!}
let numToFind = Int(readLine()!)!
var count = 0

for i in 0..<numOfInt {
    if numToFind == input[i] {
        count = count + 1
    }
}

print(count)
