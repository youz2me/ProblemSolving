//
//  main.swift
//  Programmers_138476
//
//  Created by YOUJIM on 11/4/24.
//

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var answer = 0, num = 0
    var tangerines = Array(repeating: 0, count: tangerine.max()! + 1)
    
    for product in tangerine {
        tangerines[product] += 1
    }
    
    tangerines.sort(by: >)
    
    for numOfTangerine in tangerines {
        if num >= k { break }
        num += numOfTangerine
        answer += 1
    }
    
    return answer
}

print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
