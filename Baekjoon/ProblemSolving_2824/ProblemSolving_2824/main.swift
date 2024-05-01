//
//  main.swift
//  ProblemSolving_2824
//
//  Created by YOUJIM on 4/17/24.
//

import Foundation

struct PrimeFactor {
    var prime: Int
    var count: Int
}

func primeFactorization(_ num: Int) -> [PrimeFactor] {
    var factors = [PrimeFactor]()
    var n = num
    var i = 2
    
    while i * i <= n {
        var count = 0
        
        while n % i == 0 {
            count += 1
            n /= i
        }
        
        if count > 0 { factors.append(PrimeFactor(prime: i, count: count)) }
        
        i += 1
    }
    
    if n > 1 { factors.append(PrimeFactor(prime: n, count: 1)) }
    
    return factors
}

func GCD(_ firstFactors: [PrimeFactor], _ secondFactors: [PrimeFactor]) -> Int {
    var result = 1
    
    var i = 0
    var j = 0
    
    while i < firstFactors.count && j < secondFactors.count {
        let factorA = firstFactors[i]
        let factorB = secondFactors[j]
        
        if factorA.prime == factorB.prime {
            let power = min(factorA.count, factorB.count)
            result = (result * Int(pow(Double(factorA.prime), Double(power)))) % 10_000_000_000
            i += 1
            j += 1
        }
        else if factorA.prime < factorB.prime { i += 1 }
        else { j += 1 }
    }
    
    return result
}

readLine()
let firstNum = readLine()!.split(separator: " ").map { Int($0)! }
readLine()
let secondNum = readLine()!.split(separator: " ").map { Int($0)! }

let maxNum = max(firstNum.max()!, secondNum.max()!)
let firstFactors = primeFactorization(maxNum)
let secondFactors = primeFactorization(maxNum)

let result = GCD(firstFactors, secondFactors)

print(String(result).suffix(9))

