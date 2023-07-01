//
//  main.swift
//  ProblemSolving_10866
//
//  Created by YOUJIM on 2023/06/16.
//

import Foundation

var deck = [Int]()

for _ in 1...Int(readLine()!)! {
    var command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "size":
        print(deck.count)
    case "empty":
        if deck.isEmpty { print(1) }
        else { print(0) }
    case "front":
        print(deck.first ?? -1)
    case "back":
        print(deck.last ?? -1)
    case "pop_front":
        if deck.isEmpty { print(-1) }
        else { print(deck.removeFirst()) }
    case "pop_back":
        if deck.isEmpty { print(-1) }
        else { print(deck.removeLast()) }
    case "push_front":
        deck.insert(Int(command[1])!, at: 0)
    default:
        deck.append(Int(command[1])!)
    }
}
