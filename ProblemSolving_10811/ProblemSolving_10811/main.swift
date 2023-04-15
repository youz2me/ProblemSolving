//
//  main.swift
//  ProblemSolving_10811
//
//  Created by YOUJIM on 2023/04/15.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map {Int($0)!}
var basket :[Int] = []
for i in 0..<input[0] { basket.append(i + 1) }

for _ in 1...input[1] {
    let changeBasket = readLine()!.components(separatedBy: " ").map {Int($0)!}
    let numOfValues = changeBasket[1] - changeBasket[0] + 1
    for i in 0..<(numOfValues / 2) {
        basket.swapAt(changeBasket[0] - 1 + i, changeBasket[1] - 1 - i)
    }
}

for i in 0..<input[0] {
    print(basket[i], terminator: " ")
}
