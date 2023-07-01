//
//  main.swift
//  ProblemSolving_1966
//
//  Created by YOUJIM on 2023/06/30.
//

import Foundation

for _ in 0..<Int(readLine()!)! {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    var queue = [[Int]]()
    var prior = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 1
    
    for i in 0..<nm[0] { queue.append([i]) }
    for i in 0..<prior.count { queue[i].append(prior[i]) }
    
    prior.sort()
    
    while !queue.isEmpty {
        if queue[0][1] != prior.last {
            queue.append(queue.removeFirst())
        }
        else {
            if queue[0][0] == nm[1] { break }
            queue.removeFirst()
            prior.removeLast()
            count += 1
        }
    }
    
    print(count)
    
}
