//
//  main.swift
//  ProblemSolving_2108
//
//  Created by YOUJIM on 2023/06/22.
//

import Foundation

var nums = [Int]()
var dict = [Int: Int]()

for _ in 0..<Int(readLine()!)! {
    let temp = Int(readLine()!)!
    nums.append(temp)
    if dict[temp] == nil { dict.updateValue(1, forKey: temp)}
    else { dict[temp]! += 1 }
}

var many = dict.filter { $0.value == dict.values.max() }

print(Int(round(Double(nums.reduce(0) { $0 + $1 }) / Double(nums.count))))
print(nums.sorted()[nums.count / 2])

if many.count > 1 {
    let sort = many.keys.sorted()
    print(sort[1])
}
else { print(Int(many.first!.key)) }

print(dict.keys.max()! - dict.keys.min()!)

