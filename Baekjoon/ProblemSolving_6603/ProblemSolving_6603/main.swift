//
//  main.swift
//  ProblemSolving_6603
//
//  Created by YOUJIM on 4/15/24.
//

import Foundation

var reminder = [Bool](repeating: false, count: 15) // 백트래킹 시 방문 여부를 체크할 배열
var result = "" // 결과를 출력할 문자열

func permutation(input: [Int], target: Int, depth: Int, current: String) {
    if depth == target {
        if !reminder[target - 1] { result += "\(current)\(input[target])\n" }
        return
    }
    
    for i in 0 ..< input.count {
        if !reminder[i] {
            reminder[i] = true
            permutation(input: input, target: target, depth: depth + 1, current: "\(current)\(input[i]) ")
            reminder[i] = false
         }
    }
}

while true {
    var input = readLine()!.split(separator: " ").map { Int($0)! } // 한 줄씩 입력
    
    if input.count == 1 { break } // 0만 입력되면 탈출
    
    for i in 6 ... input[0] {
        permutation(input: input, target: i, depth: 1, current: "")
    }
    
    print(result)
}


