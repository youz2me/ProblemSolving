//
//  main.swift
//  Programmers_12985
//
//  Created by YOUJIM on 11/6/24.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Any
{
    var answer = 1
    var A = a
    var B = b
    
    while A != B {
        A = (A + 1) / 2
        B = (B + 1) / 2
        
        answer += 1
        
        if a == b {
            answer -= 1
        }
    }
    
    return answer - 1
}

print(solution(8, 4, 7))
