//
//  main.swift
//  ProblemSolving_1260
//
//  Created by YOUJIM on 5/29/24.
//

import Foundation


let inputs = readLine()!.split(separator: " ").map{ Int($0)! }
let N = inputs[0]
let M = inputs[1]
let V = inputs[2]

var graph : [[Int]] = Array(repeating: [], count: inputs[0] + 1)
var check = Array(repeating: false, count: inputs[0] + 1)
var result = ""

for _ in 0 ..< M {
    let relation = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = relation[0]
    let b = relation[1]
    graph[a].append(b)
    graph[b].append(a)
    graph[a].sort()
    graph[b].sort()
}

func DFS(_ now: Int) {
    check[now] = true
    result += "\(now) "
    for i in graph[now] {
        if !check[i] {
            DFS(i)
        }
    }
}

func BFS(_ now: Int) {
    var needVisited: [Int] = [now]
    var visited = Set<Int>()
    
    while !needVisited.isEmpty {
        let node = needVisited.removeFirst()
        if !visited.contains(node) {
            visited.insert(node)
            result += "\(node) "
            needVisited.append(contentsOf: graph[node])
        }
    }
}

DFS(V)
print(result)
result = ""
BFS(V)
print(result)
