//
//  main.swift
//  ProblemSolving_2501
//
//  Created by YOUJIM on 2023/05/02.
//

import Foundation

let inputNum = readLine()!.components(separatedBy: " ").map {Int($0)!}
var measure : [Int] = []

for i in 1...inputNum[0] {
    if inputNum[0] % i == 0 {
        measure.append(i)
    }
}

if inputNum[1] > measure.count {
    print("0")
}
else {
    print(measure[inputNum[1] - 1])
}




