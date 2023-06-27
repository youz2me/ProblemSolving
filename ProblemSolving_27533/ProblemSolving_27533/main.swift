//
//  main.swift
//  ProblemSolving_27533
//
//  Created by YOUJIM on 2023/06/27.
//

import Foundation

func factorial(_ num: Int) -> Int {
    if num == 0 || num == 1 { return 1 }
    return num * factorial(num - 1)
}

print(factorial(Int(readLine()!)!))
