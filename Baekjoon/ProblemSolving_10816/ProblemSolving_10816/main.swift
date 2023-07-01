//
//  main.swift
//  ProblemSolving_10816
//
//  Created by YOUJIM on 2023/06/18.
//

//import Foundation

readLine()
var inputs = [Int: Int]()
readLine()!.split(separator: " ").map { inputs.updateValue((inputs[Int($0)!] ?? 0) + 1, forKey: Int($0)!) }

readLine()
var cards = readLine()!.split(separator: " ").map { Int($0)! }

for card in cards {
    if inputs[card] != nil { print(inputs[card]!, terminator: " ")}
    else { print(0, terminator: " ")}
}


