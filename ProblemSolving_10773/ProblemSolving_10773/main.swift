//
//  main.swift
//  ProblemSolving_10773
//
//  Created by YOUJIM on 2023/06/20.
//

//import Foundation

var inputs = [Int]()
var count = 0

for _ in 1...Int(readLine()!)! {
    var input = Int(readLine()!)!
    if input == 0 { inputs.removeLast() }
    else { inputs.append(input) }
}

for input in inputs { count += input }

print(count)
