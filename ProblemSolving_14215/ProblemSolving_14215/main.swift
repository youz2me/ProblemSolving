//
//  main.swift
//  ProblemSolving_14215
//
//  Created by YOUJIM on 2023/05/09.
//

import Foundation

var triangle = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()

if triangle[2] >= triangle[0] + triangle[1] {
    print((triangle[1] + triangle[0]) * 2 - 1)
}
else {
    print(triangle[0] + triangle[1] + triangle[2])
}
