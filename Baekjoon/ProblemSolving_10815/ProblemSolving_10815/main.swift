//
//  main.swift
//  ProblemSolving_10815
//
//  Created by YOUJIM on 2023/05/31.
//

import Foundation

func binarySearch(_ arr: [Int],_ num: Int) -> Bool {
    var start = 0
    var end = arr.count - 1
    
    while start <= end {
        var mid = (start + end) / 2
        if arr[mid] == num { return true }
        else if arr[mid] < num { start = mid + 1 }
        else if arr[mid] > num { end = mid - 1 }
    }
    return false
}

var numOfCards = readLine()!
var cards = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var numOfInputs = readLine()!
var inputs = readLine()!.split(separator: " ").map { Int($0)! }

var result = [String]()

for input in inputs {
    if binarySearch(cards, input) == true { result.append("1") }
    else { result.append("0") }
}

print(result.joined(separator: " "))
