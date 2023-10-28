//
//  main.swift
//  ProblemSolving_21736
//
//  Created by YOUJIM on 2023/08/30.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var campus = [[Character]]()
var start: (Int, Int) = (0, 0)

for _ in 0 ..< input[0] {
    campus.append(Array(readLine()!))
}

for i in 0 ..< campus.count {
    if campus[i].contains("I") {
        start = (i, campus[i].firstIndex(of: "I")!)
    }
}

let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: input[1]), count: input[0])
var res = 0

var queue = [(Int, Int)]()

queue.append(start)
visited[start.0][start.1] = true

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()

    for (dx, dy) in directions {
        let nx = x + dx
        let ny = y + dy

        if nx >= 0 && nx < input[0] && ny >= 0 && ny < input[1] {
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
