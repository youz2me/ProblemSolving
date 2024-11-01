//
//  main.swift
//  Programmers_12941
//
//  Created by YOUJIM on 11/1/24.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    
    var arrA = A.sorted()
    var arrB = B.sorted()

    while !arrA.isEmpty {
        if arrA.last! > arrB.last! {
            ans += arrA.last! * arrB.first!
            arrA.removeLast()
            arrB.removeFirst()
        } else {
            ans += arrB.last! * arrA.first!
            arrB.removeLast()
            arrA.removeFirst()
        }
    }

    return ans
}

print(solution([1, 4, 2], [5, 4, 4]))
