//
//  main.swift
//  ProblemSolving_21736
//
//  Created by YOUJIM on 2023/08/30.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var campus = [[Character]]()
var start: (Int, Int) = (0, 0)

for i in 0..<N {
    let row = Array(readLine()!)
    for (j, char) in row.enumerated() {
        if char == "I" { start = (i, j) }
    }
    campus.append(row)
}

let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: M), count: N)
var res = 0

var queue = [(Int, Int)]()
queue.append(start)
visited[start.0][start.1] = true

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()

    for (dx, dy) in directions {
        let nx = x + dx
        let ny = y + dy

        if nx >= 0 && nx < N && ny >= 0 && ny < M {
            if campus[nx][ny] != "X" && !visited[nx][ny] {
                queue.append((nx, ny))
                visited[nx][ny] = true

                if campus[nx][ny] == "P" { res += 1 }
            }
        }
    }
}

if res > 0 { print(res) }
else { print("TT") }


