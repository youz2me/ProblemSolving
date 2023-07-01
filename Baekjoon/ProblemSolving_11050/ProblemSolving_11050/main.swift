//
//  main.swift
//  ProblemSolving_11050
//
//  Created by YOUJIM on 2023/06/10.
//

//import Foundation

func fact(_ num: Int) -> Int {
    if num == 0 || num == 1 { return 1 }
    return num * fact(num - 1)
}

var input = readLine()!.split(separator: " ").map {Int($0)!}

print(fact(input[0]) / (fact(input[0] - input[1]) * fact(input[1])))
