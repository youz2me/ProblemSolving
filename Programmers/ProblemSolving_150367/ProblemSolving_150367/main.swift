//
//  main.swift
//  ProblemSolving_150367
//
//  Created by YOUJIM on 2023/07/02.
//

import Foundation

func checkBinaryTree(_ start: Int, _ end: Int, _ decimal: String) -> Int {
    return 1
}

func solution(_ numbers:[Int64]) -> [Int] {
    var result = [Int]()
    
    for number in numbers {
        var decimal = String(number, radix: 2)
        result.append(checkBinaryTree(0, (decimal.count - 1), decimal))
    }
    
    return result
}

print(solution([7, 42, 5]))
