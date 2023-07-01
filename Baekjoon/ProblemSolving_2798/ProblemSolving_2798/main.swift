//
//  main.swift
//  ProblemSolving_2798
//
//  Created by YOUJIM on 2023/05/17.
//

import Foundation

func combi(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        for i in index..<nums.count {
            combination(i + 1, nowCombi + [nums[i]])
        }
    }
    combination(0, [])
    return result
}

var input = readLine()!.components(separatedBy: " ").map {Int($0)!}
var cards = combi(readLine()!.components(separatedBy: " ").map {Int($0)!}, 3)
var max = -1

for i in cards {
    let total = i.reduce(0, +)
    if total > max && total <= input[1] { max = total }
}

print(max)
