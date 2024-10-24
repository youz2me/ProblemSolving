//
//  main.swift
//  ProblemSolving_2178
//
//  Created by YOUJIM on 6/5/24.
//

import Foundation


let nm = readLine()!.split(separator: " ").map { Int($0)! }
var inputs = [[Int]]()

for _ in (0 ..< nm[0]) {
    inputs.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var queue = [(0,0)]

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()

    for i in 0 ..< 4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if nx < 0 || ny < 0 || nx >= nm[0] || ny >= nm[1] { continue }
        if inputs[nx][ny] == 0 { continue }
        if inputs[nx][ny] == 1 {
            inputs[nx][ny] = inputs[x][y] + 1
            queue.append((nx, ny))
        }
    }
}

print(inputs[nm[0] - 1][nm[1] - 1])
