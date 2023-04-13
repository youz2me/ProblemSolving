//
//  main.swift
//  ProblemSolving_10810
//
//  Created by YOUJIM on 2023/04/13.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map {Int($0)!}
let numOfBasket = input[0]
let numOfTime = input[1]

var basket = [Int](repeating: 0, count: numOfBasket)

for _ in 0..<numOfTime {
    let temp = readLine()!.components(separatedBy: " ").map {Int($0)!}
    for i in temp[0]...temp[1] {
        basket[i - 1] = temp[2]
    }
}

basket[0...].forEach { print($0, terminator: " ") }
