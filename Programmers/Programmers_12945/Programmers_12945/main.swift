//
//  main.swift
//  Programmers_12945
//
//  Created by YOUJIM on 10/30/24.
//

func fibo(_ n: Int) -> Int {
    var result = [0, 1]
    
    for i in 1 ..< n {
        result.append((result[i] + result[i - 1]) % 1234567)
    }
    
    return result[n]
}

func solution(_ n:Int) -> Int {
    return fibo(n)
}

print(solution(100000))
