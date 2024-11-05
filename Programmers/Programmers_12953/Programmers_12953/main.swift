//
//  main.swift
//  Programmers_12953
//
//  Created by YOUJIM on 11/5/24.
//

import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    
    return GCD(b, a % b)
}

func solution(_ arr:[Int]) -> Int {
    var answer = 0
    
    for i in 0..<arr.count {
        if i == 0 {
            answer = arr[i]
        } else {
            answer = arr[i] * answer / GCD(arr[i], answer)
        }
    }
    
    return answer
}

print(solution([2,6,8,14]))
