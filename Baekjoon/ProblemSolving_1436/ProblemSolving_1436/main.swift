//
//  main.swift
//  ProblemSolving_1436
//
//  Created by YOUJIM on 2023/06/26.
//

import Foundation

var input = Int(readLine()!)!
var count = 0
var num = 0

while count != input {
    var temp = num
    while temp >= 666 {
        if temp % 1000 == 666 { count += 1; break }
        else { temp /= 10 }
    }
    num += 1
}

print(num - 1)
