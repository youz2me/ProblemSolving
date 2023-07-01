//
//  main.swift
//  ProblemSolving_9506
//
//  Created by YOUJIM on 2023/05/03.
//

import Foundation

while 0 != 1 {
    var num = Int(readLine()!)!
    var measure : [Int] = []
    var total = 0
    
    
    if num == -1 { exit(0) }
    
    for i in 1...num - 1 {
        if num % i == 0 {
            measure.append(i)
            total = total + i
        }
    }
    
    if num == total {
        print("\(num) = ", terminator: "")
        for i in 0...measure.count - 2 { print("\(measure[i]) + ",terminator: "") }
        print("\(measure[measure.count - 1])")
    }
    else {
        print("\(num) is NOT perfect.")
    }
}
