//
//  main.swift
//  Programmers_12911
//
//  Created by YOUJIM on 11/2/24.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var answer: Int = n
    let num = [Character](String(n, radix: 2)).filter { $0 == "1" }
    
    while true {
        answer += 1
        
        if String(answer, radix: 2).filter({ $0 == "1" }) == num {
            break
        }
    }
    
    return answer
}

print(solution(15))
