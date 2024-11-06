//
//  main.swift
//  Programmers_12985
//
//  Created by YOUJIM on 11/6/24.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var A = a
    var B = b
    
    while true {
        if A == B {
            break
        }
        A = (A + 1) / 2
        B = (B + 1) / 2
        answer += 1
    }
    
    return answer
}

print(solution(8, 4, 7))
