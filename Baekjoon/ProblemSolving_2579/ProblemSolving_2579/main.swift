//
//  main.swift
//  ProblemSolving_2579
//
//  Created by YOUJIM on 2023/07/20.
//


let n = Int(readLine()!)!
var arr : [Int] = [0]
var memo = [Int](repeating: 0, count: n + 1)

for _ in 0 ..< n { arr.append(Int(readLine()!)!) }


if n == 1 { print(arr[1]) }
else if n == 2 { print(arr[1] + arr[2]) }
else {
    memo[1] = arr[1]
    memo[2] = memo[1] + arr[2]
    for i in 3 ... n { memo[i] = max(memo[i - 3] + arr[i - 1], memo[i - 2]) + arr[i] }
    print(memo.last!)
}
