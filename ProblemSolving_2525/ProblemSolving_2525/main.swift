//
//  main.swift
//  ProblemSolving_2525
//
//  Created by YOUJIM on 2023/04/07.
//

import Foundation

let time = readLine()!.components(separatedBy: " ").map {Int($0)!}
var hour = time[0]
var min = time[1]
var cookingTime = Int(readLine()!)!

hour = (hour + ((min + cookingTime) / 60 )) % 24
min = (min + cookingTime) % 60

print("\(hour) \(min)")
