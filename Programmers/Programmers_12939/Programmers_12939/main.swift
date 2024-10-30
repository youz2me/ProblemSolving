//
//  main.swift
//  Programmers_12939
//
//  Created by YOUJIM on 10/31/24.
//

import Foundation

func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").map { Int($0)! }
    
    return "\(arr.min()!) \(arr.max()!)"
}

print(solution("-1 -2 -3 -4"))
