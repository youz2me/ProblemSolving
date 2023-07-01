//
//  main.swift
//  ProblemSolving_11866
//
//  Created by YOUJIM on 2023/06/17.
//

//import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }

var nums = [Int](1...input[0])
var count = input[1] - 1

print("<",terminator: "")
while nums.count != 1 {
    
    if count >= nums.count {
        count %= nums.count
    }
    
    let index = nums.remove(at: count)
    print("\(index), ",terminator: "")
    count += input[1] - 1
}

print("\(nums[0])>")
