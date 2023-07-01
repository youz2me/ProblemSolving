//
//  main.swift
//  ProblemSolving_16198
//
//  Created by YOUJIM on 2023/05/28.
//

import Foundation

func binarySearch(_ arr: [Int], target: Int) -> Bool {
    if arr.count == 1 {
        return arr[0] == target ? true : false
    }
    let mid = arr.count / 2
    if arr[mid] == target { return true }
    let range = arr[mid] > target ? (0..<mid) : ((mid + 1) ..< arr.count)
    
    return binarySearch(Array(arr[range]), target: target)
}

readLine()!
var marbles = readLine()!.components(separatedBy: " ").map {Int($0)!}


for i in 0..<marbles.count {
    binarySearch(marbles, target: i)
}
