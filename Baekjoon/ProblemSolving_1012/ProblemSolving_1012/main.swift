//
//  main.swift
//  ProblemSolving_1012
//
//  Created by YOUJIM on 2023/08/11.
//

import Foundation

let num = Int(readLine()!)!

for _ in 1...num {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var graph = [[Int]](repeating: [Int](repeating: 0, count: input[0]), count: input[1])
    var cnt = 0
        
    for _ in 1 ... input[2] {
        let XY = readLine()!.components(separatedBy: " ").map { Int($0)! }
        let X = XY[0]
        let Y = XY[1]
        graph[Y][X] = 1
    }
    
    func dfs(_ x: Int, _ y: Int) {
        if x < 0 || x >= input[0] || y < 0 || y >= input[1] { return }
        if graph[y][x] == 1 {
            graph[y][x] = 0
            dfs(x + 1, y)
            dfs(x - 1, y)
            dfs(x, y + 1)
            dfs(x, y - 1)
        }
    }
    
    for i in 0 ..< input[1] {
        for j in 0 ..< input[0] {
            if graph[i][j] == 1 {
                dfs(j, i)
                cnt += 1
            }
        }
    }

    print(cnt)
}
