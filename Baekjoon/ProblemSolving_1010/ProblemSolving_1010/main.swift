//
//  main.swift
//  ProblemSolving_1010
//
//  Created by YOUJIM on 2023/07/18.
//

import Foundation

var res = Array(repeating: Array(repeating: 0, count: 31), count: 31)
let t = Int(readLine()!)!

func river(_ x: Int, _ y: Int) -> Int{
    if x == y || y == 0 { return 1 }
    if res[x][y] != 0 { return res[x][y] }
    res[x][y] = river(x - 1, y - 1) + river(x - 1, y)
    return res[x][y]
}

for _ in 0 ..< t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    print(river(input[1], input[0]))
}



