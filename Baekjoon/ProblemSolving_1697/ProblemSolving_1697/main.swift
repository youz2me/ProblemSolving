//
//  main.swift
//  ProblemSolving_1697
//
//  Created by YOUJIM on 2023/08/25.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

var visited = [Bool](repeating: false, count: 100_001)

func bfs(_ x: Int) {
    var queue = [(x, 0)]
    var index = 0
    visited[x] = true
    
    while queue.count > index {
        let x = queue[index].0
        let d = queue[index].1
        
        if x == input[1] {
            print(d)
            break
        }
        
        for i in [1, -1, x] {
            let nx = x + i
            if 0...100_000 ~= nx && !visited[nx] {
                visited[nx] = true
                queue.append((nx, d + 1))
            }
        }
        index += 1
    }
}

bfs(input[0])
