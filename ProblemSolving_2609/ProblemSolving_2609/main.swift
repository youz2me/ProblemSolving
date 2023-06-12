//
//  main.swift
//  ProblemSolving_2609
//
//  Created by YOUJIM on 2023/06/12.
//

//import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a}
    return gcd(b, a % b)
}

var input = readLine()!.split(separator: " ").map { Int($0)! }

print(gcd(input[0], input[1]))
print((input[0] * input[1]) / gcd(input[0], input[1]))
