//
//  main.swift
//  ProblemSolving_11047
//
//  Created by YOUJIM on 2023/07/02.
//

import Foundation

var nk = readLine()!.split(separator: " ").map { Int($0)! }
var coins = [Int]()
for _ in 0..<nk[0] { coins.append(Int(readLine()!)!) }

coins.reverse()
var numOfCoins = 0

for coin in coins {
    if coin <= nk[1] {
        numOfCoins += (nk[1] / coin)
        nk[1] %= coin
    }
}

print(numOfCoins)
