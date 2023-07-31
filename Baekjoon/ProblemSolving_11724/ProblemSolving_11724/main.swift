//
//  main.swift
//  ProblemSolving_11724
//
//  Created by YOUJIM on 2023/07/31.
//

import Foundation

func bfs(_ graph: [[Int]], _ start: Int, _ visited: inout [Bool]) {
    var queue = [Int]()
    queue.append(start)
    visited[start] = true
    
    while !queue.isEmpty {
        let v = queue.removeFirst()
        for i in graph[v] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

let input = { readLine()! }
let line = input().split(separator: " ").map { Int($0)! }
let N = line[0]
let M = line[1]

var graph = [[Int]](repeating: [], count: N + 1)
var visited = [Bool](repeating: false, count: N + 1)

for _ in 0..<M {
    let edge = input().split(separator: " ").map { Int($0)! }
    let node1 = edge[0]
    let node2 = edge[1]
    graph[node2].append(node1)
    graph[node1].append(node2)
}

var cnt = 0
for i in 1...N {
    if !visited[i] {
        bfs(graph, i, &visited)
        cnt += 1
    }
}
print(cnt)

