//
//  main.swift
//  ProblemSolving_1620
//
//  Created by YOUJIM on 2023/07/02.
//

import Foundation

var nm = readLine()!.split(separator: " ").map { Int($0)! }
var str2num = [String: Int]()
var num2str = [Int: String]()
for i in 1...nm[0] {
    let name = readLine()!
    str2num[name] = i
    num2str[i] = name
}

for _ in 0..<nm[1] {
    let line = readLine()!
    if let index = Int(line) { print(num2str[index]!) }
    else { print(str2num[line]!) }
}
