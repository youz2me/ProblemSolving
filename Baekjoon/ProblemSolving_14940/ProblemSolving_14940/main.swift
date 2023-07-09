//
//  main.swift
//  ProblemSolving_14940
//
//  Created by YOUJIM on 2023/07/09.
//

//import Foundation
//
//var nm = readLine()!.split(separator: " ").map { Int($0)! }
//var nodes = [[Int]]()
//

import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

let nm = readLine()!.split(separator: " ").map{ Int($0)! }
var nodes = [[Int]]()

var result = Array(repeating: Array(repeating: Int.max, count: nm[1]), count: nm[0])
var arrivePoint: (Int, Int) = (-1, -1)

func BFS(_ goal:(Int, Int)) -> Void {
    var queue = [(Int, Int, Int)]()
    queue.append((goal.0, goal.1, 0))
    result[goal.0][goal.1] = 0
    var index = 0
    
    while queue.count > index {
        let curData = queue[index]
        let curRow = curData.0
        let curCol = curData.1
        let curCnt = curData.2
        
        for i in 0..<4{
            let nextRow = curRow + dy[i]
            let nextCol = curCol + dx[i]
            let nextCnt = curCnt + 1
            
            if nextRow < 0 || nextCol < 0 || nextRow >= nm[0] || nextCol >= nm[1] || nodes[nextRow][nextCol] != 1 {
                continue
            }
            
            if result[nextRow][nextCol] > nextCnt {
                result[nextRow][nextCol] = nextCnt
                queue.append((nextRow, nextCol, nextCnt))
            }
        }
        index += 1
    }
    return
}

for i in 0..<nm[0]{
    let row = readLine()!.split(separator: " ").map{ Int($0)! }
    for j in 0..<nm[1] { if row[j] == 2 { arrivePoint = (i, j) } }
    nodes.append(row)
}

BFS(arrivePoint)

for i in 0..<nm[0] {
    for j in 0..<nm[1] {
        if result[i][j] == Int.max {
            if nodes[i][j] == 0 { print(0, terminator: " ") }
            else { print(-1, terminator: " ") }
        }
        else { print(result[i][j], terminator: " ") }
    }
    print()
}
