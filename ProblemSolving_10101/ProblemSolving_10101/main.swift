//
//  main.swift
//  ProblemSolving_10101
//
//  Created by YOUJIM on 2023/05/07.
//

import Foundation

var total = 0
var angle = [Int]()
for i in 0...2 {
    angle.append(Int(readLine()!)!)
    total = total + angle[i]
}

if angle[0] == 60 && angle[1] == 60 && angle[2] == 60 { print("Equilateral") }
else if total == 180 && Set(angle).count == 2 { print("Isosceles")}
else if total == 180 && Set(angle).count == 3 { print("Scalene")}
else if total != 180 { print("Error") }

