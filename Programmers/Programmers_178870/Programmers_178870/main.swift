//
//  main.swift
//  Programmers_178870
//
//  Created by YOUJIM on 2023/06/04.
//

import Foundation

func solution(sequence:[Int], k:Int) -> [Int] {
    var sumOfTotal = sequence[0]
    var start = 0
    var end = 0
    var subsequence: [[Int]] = []
    
    while start < sequence.count && end < sequence.count {
        if sumOfTotal == k {
            subsequence.append([start, end])
        }
        
        if sumOfTotal <= k {
            end += 1
            if end == sequence.count { break }
            sumOfTotal += sequence[end]
        } else {
            sumOfTotal -= sequence[start]
            start += 1
        }
    }
    
    subsequence = subsequence.sorted(by: {
        if $0[1] - $0[0] == $1[1] - $1[0] {
            return $0[0] < $1[0]
        } else {
            return $0[1] - $0[0] < $1[1] - $1[0]
        }
    })
    
    return subsequence.isEmpty ? [] : subsequence[0]
}

print(solution(sequence: [1, 2, 3, 4, 5], k: 7))

