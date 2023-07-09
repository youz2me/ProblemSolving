//
//  main.swift
//  Programmers_159993
//
//  Created by YOUJIM on 2023/07/09.
//

import Foundation

func solution(_ maps:[String]) -> Int {
    
    let dx = [0, 0, -1, 1]
    let dy = [-1, 1, 0, 0]
    
    var start: (Int, Int) = (0, 0)
    var lever: (Int, Int) = (0, 0)
    var map: [[Character]] = []
    
    for (i, low) in maps.enumerated() {
        if let j = Array(low).firstIndex(of: "S") { start = (j, i) }
        if let j = Array(low).firstIndex(of: "L") { lever = (j, i) }
        map.append(Array(low))
    }
    
    func BFS(start: (Int, Int), end: String) -> Int? {
        var distance: [[Int]] = Array(repeating: [Int](repeating: -1, count: maps[0].count), count: maps.count)
        var queue: [(Int, Int)] = []
        
        distance[start.1][start.0] = 0
        queue.append(start)
        
        while !queue.isEmpty {
            let (qx, qy) = queue.removeFirst()
            for i in 0..<4 {
                let nx = qx + dx[i]
                let ny = qy + dy[i]
                if 0..<maps[0].count ~= nx && 0..<maps.count ~= ny &&
                    map[ny][nx] != "X" && distance[ny][nx] == -1 {
                    if map[ny][nx] == Character(end) {
                        return distance[qy][qx] + 1
                    }
                    distance[ny][nx] = distance[qy][qx] + 1
                    queue.append((nx, ny))
                }
            }
        }
        return nil
    }
    
    guard let time1 = BFS(start: start, end: "L") else { return -1 }
    guard let time2 = BFS(start: lever, end: "E") else { return -1 }
    
    return time1 + time2
}
