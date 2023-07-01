//
//  main.swift
//  ProblemSolving_2903
//
//  Created by YOUJIM on 2023/04/30.
//

import Foundation

func recursion(i : Int, dotPerLine: Int) -> Int {
    if i == 0 {
        return dotPerLine * dotPerLine
    }
    return recursion(i: i - 1, dotPerLine: dotPerLine * 2 - 1)
}

print(recursion(i: Int(readLine()!)!, dotPerLine: 2))
