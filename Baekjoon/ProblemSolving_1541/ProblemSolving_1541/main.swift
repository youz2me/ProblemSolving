//
//  main.swift
//  ProblemSolving_1541
//
//  Created by YOUJIM on 2023/08/02.
//

import Foundation

var input = readLine()!
var nums = input.components(separatedBy: ["+", "-"]).map { Int($0)! }
var operators = [String]()
var sum = nums[0]
var index = 0

for letter in input {
    if letter == "+" { operators.append("+") }
    else if letter == "-" { operators.append("-") }
}

if nums.count == 2 {
    if operators[0] == "+" { sum = nums[0] + nums[1] }
    else { sum = nums[0] - nums[1] }
}
else {
    while index < operators.count {
        if operators[index] == "-" {
            for _ in index ..< operators.count {
                sum -= nums[index + 1]
                index += 1
                if (index == operators.count) || (operators[index] == "-") { break }
            }
            
        }
        else {
            sum += nums[index + 1]
            index += 1
        }
    }
}

print(sum)
