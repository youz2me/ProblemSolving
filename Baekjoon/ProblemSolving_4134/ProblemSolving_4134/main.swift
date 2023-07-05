//
//  main.swift
//  ProblemSolving_4134
//
//  Created by YOUJIM on 2023/07/05.
//

import Foundation

func isPrime(_ num: Int) -> Bool {
    if num <= 1 { return false }
    if num % 2 == 0 { return num == 2 ? true : false }
    
    for i in 2...Int(round(sqrt(Double(num)))) {
        if num % i == 0 { return false }
    }
    
    return true
}

for _ in 0..<Int(readLine()!)! {
    var num = Int(readLine()!)!
    while !isPrime(num) { num += 1 }
    print(num)
}

