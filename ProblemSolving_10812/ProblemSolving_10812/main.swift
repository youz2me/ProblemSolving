//
//  main.swift
//  ProblemSolving_10812
//
//  Created by YOUJIM on 2023/04/20.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map {Int($0)!}

var basket = [Int](1...input[0])

for _ in 1...input[1] {
    let method = readLine()!.components(separatedBy: " ").map {Int($0)!}
    let begin = method[0] - 1
    let end = method[1] - 1
    let mid = method[2] - 1
    
    var tempBasket = basket
    
    if begin != mid {
        for i in begin...(begin + end - mid) {
            tempBasket[i] = basket[mid + i - begin]
        }
        for i in (begin + end - mid + 1)...end {
            tempBasket[i] = basket[begin + i - (begin + end - mid + 1)]
        }
        basket = tempBasket
    }
}

for i in 0...input[0] - 1 {
    if (i == input[0] - 1) {
        print(basket[i])
    }
    else {
        print(basket[i], terminator: " ")
    }
}
