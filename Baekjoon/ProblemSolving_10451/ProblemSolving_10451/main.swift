//
//  main.swift
//  ProblemSolving_10451
//
//  Created by YOUJIM on 5/30/24.
//

import Foundation


let numberOfTestCase = Int(readLine()!)!
let sequenceSize = Int(readLine()!)!
var sequence = [[Int]](repeating: [], count: sequenceSize + 1)
var cycleNum = 0

for i in 0..<sequenceSize {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[i]
    
    sequence[i].append(i+1) // 1 [i]
    sequence[i].append(a) // 1 [i, a]
}

/*
 [1, 3]
 [2, 2]
 [3, 7]
 [4, 8]
 .
 .
 .
 */
// DFS로 접근

var visited = [Bool](repeating: false, count: sequenceSize)
var node = 0
var nextNode = node + 1
    
func findCycle(whereToStart: Int) {
    if visited[whereToStart] == false {
        while sequence[whereToStart][node] != sequence[whereToStart][nextNode] {
            visited[whereToStart] = true
            
            var whereToStart = nextNode
            findCycle(whereToStart: nextNode)
        }
        cycleNum += 1
    }
    print(cycleNum)
}


for i in 0..<numberOfTestCase {
    findCycle(whereToStart: 0)
}


