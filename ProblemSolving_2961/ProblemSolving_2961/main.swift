//
//  main.swift
//  ProblemSolving_2961
//
//  Created by YOUJIM on 2023/05/22.
//

import Foundation

func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    func cycle(_ index: Int, _ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        for i in index..<array.count {
            cycle(i + 1, now + [array[i]])
        }
    }
    
    cycle(0, [])
    
    return result
}

var foods = [[Int]]()

var numOfFood = Int(readLine()!)!
for _ in 1...numOfFood { foods.append(readLine()!.components(separatedBy: " ").map { Int($0)! })}

var minOfdifference = 1000000001

for num in 1...numOfFood {
    var selectFoods = [[Int]]()
    for 
}
