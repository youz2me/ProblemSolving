//
//  main.swift
//  ProblemSolving_5014
//
//  Created by YOUJIM on 6/5/24.
//

import Foundation


class Queue<T> {
    var enqueue: [T]
    var dequeue: [T] = []
    var count: Int { return enqueue.count + dequeue.count }
    var isEmpty: Bool { return enqueue.isEmpty && dequeue.isEmpty }
    
    init(_ n: [T]) { enqueue = n }
    
    func push(_ n: T) { enqueue.append(n) }
    
    func pop() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}


let firstLine = readLine()!.split(separator: " ").map({ Int($0)! })
let f = firstLine[0]
let s = firstLine[1]
let g = firstLine[2]
let u = firstLine[3]
let d = firstLine[4]

var visited: [Bool] = [Bool](repeating: false, count: f + 1)
let queue = Queue([(s, 0)])
var result = -1

visited[s] = true

while !queue.isEmpty {
    let now = queue.pop()!
    if now.0 == g {
        result = now.1
        break
    }
    if now.0 + u <= f {
        if !visited[now.0 + u] {
            visited[now.0 + u] = true
            queue.push((now.0 + u, now.1 + 1))
        }
    }
    if now.0 - d >= 1 {
        if !visited[now.0 - d] {
            visited[now.0 - d] = true
            queue.push((now.0 - d, now.1 + 1))
        }
    }
}

if result != -1 { print(result) }
else { print("use the stairs") }
