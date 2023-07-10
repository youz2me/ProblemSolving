//
//  main.swift
//  ProblemSolving_1475
//
//  Created by YOUJIM on 2023/07/10.
//

import Foundation

let nums = readLine()!
var arr = Array(repeating: 0, count: 10)

for num in nums { arr[Int(String(num))!] += 1 }

arr[9] += arr[6]
arr[6] = 0

if arr.firstIndex(of: arr.max()!) == 9 { print((arr[9] / 2) + (arr[9] % 2)) }
else { print(arr.max()!) }
