//
//  main.swift
//  ProblemSolving_1003
//
//  Created by YOUJIM on 2023/06/29.
//

//import Foundation

var countZero = 0
var countOne = 0

func fibo(_ num: Int) -> Int {
    if num == 0 { countZero += 1; return 0 }
    else if num == 1 { countOne += 1; return 1 }
    return (fibo(num - 1) + fibo(num - 2))
}

for _ in 0..<Int(readLine()!)! {
    countOne = 0
    countZero = 0
    fibo(Int(readLine()!)!)
    print("\(countZero) \(countOne)")
}
