//
//  main.swift
//  ProblemSolving_5430
//
//  Created by YOUJIM on 2023/08/04.
//

import Foundation

for _ in 0 ..< Int(readLine()!)! {
    let inputs = readLine()!
    let numOfArr = Int(readLine()!)!
    var arr = readLine()!.dropFirst().dropLast().split(separator: ",")
    var isError = false
    var isReversed = false
    var front = 0
    var back =  numOfArr - 1
    
    for input in inputs {
        if input == "R"  { isReversed.toggle() }
        else {
            if front > back {
                isError = true
            }
            if isReversed { back -= 1 }
            else { front += 1 }
        }
    }
    
    if isError { print("error") }
    else {
        if front > back { print("[]") }
        else {
            if isReversed { arr = Array(arr[front...back]).reversed() }
            else { arr = Array(arr[front...back]) }
            
            print("[\(arr.joined(separator: ","))]")
        }
    }
}
