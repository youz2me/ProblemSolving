//
//  main.swift
//  Programmers_4316
//
//  Created by YOUJIM on 2023/06/18.
//

import Foundation

var nums = [1, 1, 1, 1, 1]
var target = 3

var number: [Int] = []
var targets: Int = 0
var count: Int = 0

func dfs(index: Int, sum: Int) {
    if index == number.count { //sum과 target의 계산값이 같다면 count + 1
        if sum == targets { count += 1 }
        return //재귀가 불가능하면 return
    }
    dfs(index: index + 1, sum: sum + number[index]) // 하나는 더하고
    dfs(index: index + 1, sum: sum - number[index]) // 하나는 빼는 방식으로 재귀 실행
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    number = numbers
    targets = target
    
    dfs(index: 0, sum: 0)

    return count
}

print(solution(nums, target))
