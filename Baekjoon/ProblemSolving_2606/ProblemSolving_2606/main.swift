//
//  main.swift
//  ProblemSolving_2606
//
//  Created by YOUJIM on 5/29/24.
//

import Foundation


let n = Int(readLine()!)!
let m = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

func dfs(node: Int) {
    visited[node] = true
    for nextNode in graph[node] {
        if !visited[nextNode] {
            dfs(node: nextNode)
        }
    }
}

for _ in 0 ..< m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

dfs(node: 1)
print(visited.filter { $0 }.count - 1)
