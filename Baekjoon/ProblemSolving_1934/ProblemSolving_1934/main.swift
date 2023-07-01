//
//  main.swift
//  ProblemSolving_1934
//
//  Created by YOUJIM on 2023/06/01.
//

//import Foundation

for _ in 0 ..< Int(readLine()!)! {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    var num1 = 0
    var num2 = max(input[0], input[1])
    var num3 = min(input[0], input[1])
    
    while num3 != 0 {
        num1 = num2
        num2 = num3
        num3 = num1 % num2
    }
    
    print(input[0] * input[1] / num2)
}
