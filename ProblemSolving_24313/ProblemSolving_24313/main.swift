//
//  main.swift
//  ProblemSolving_24313
//
//  Created by YOUJIM on 2023/05/16.
//

import Foundation

var functionN = readLine()!.components(separatedBy: " ").map {Int($0)!}
var c = Int(readLine()!)!
var n0 = Int(readLine()!)!

if ((functionN[0] * n0 + functionN[1]) <= c * n0) && functionN[0] <= c {
    print("1")
}
else {
    print("0")
}

