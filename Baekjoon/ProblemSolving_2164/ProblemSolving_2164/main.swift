//
//  main.swift
//  ProblemSolving_2164
//
//  Created by YOUJIM on 2023/06/14.
//

//import Foundation

var cards = [Int](1...Int(readLine()!)!)
var temp = 0

if cards.count == 1 { print(1) }
else {
    while true {
        cards[temp] = 0
        cards.append(cards[temp + 1])
        cards[temp + 1] = 0
        if cards[cards.count - 2] == 0 { print(cards.last!); break }
        temp += 2
    }
}
