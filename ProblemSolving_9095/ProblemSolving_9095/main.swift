//
//  main.swift
//  ProblemSolving_9095
//
//  Created by YOUJIM on 2023/05/11.
//

import Foundation

func factorial(_ n : Int) -> Int {
    if n == 0 || n == 1 { return 1 }
    return n * factorial(n - 1)
}

for _ in 1...Int(readLine()!)! {
    let testCase = Int(readLine()!)!
    var total = 0
    
    for j in 0...testCase {
        let numOfOne = j
        for k in 0...(testCase - numOfOne) / 2 {
            let numOfTwo = k
            let numOfThree = (testCase - numOfOne - numOfTwo * 2) / 3
            if (numOfThree * 3 + numOfTwo * 2 + numOfOne) == testCase {
                let numOfElement = numOfOne + numOfTwo + numOfThree
                total = total + (factorial(numOfElement) / (factorial(numOfOne) * factorial(numOfTwo) * factorial(numOfThree)))
            }
        }
    }
    print(total)
}
