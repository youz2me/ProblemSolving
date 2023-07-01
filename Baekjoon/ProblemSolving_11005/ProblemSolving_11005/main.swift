//
//  main.swift
//  ProblemSolving_11005
//
//  Created by YOUJIM on 2023/04/28.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")
let value = Int(input[0])!
let rad = Int(input[1])!

print(String(value, radix: rad).uppercased())



