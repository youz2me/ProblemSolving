//
//  main.swift
//  ProblemSolving_1463
//
//  Created by YOUJIM on 2023/06/14.
//

import Foundation

var input = Int(readLine()!)!
var count = 0

while (true) {
    if input == 1 { break }
    if input % 3 == 0 { input = (input / 3); count += 1 }
    else if input % 2 == 0 { input = (input / 2); count += 1 }
    else { input = (input - 1); count += 1 }
}

print(count)
