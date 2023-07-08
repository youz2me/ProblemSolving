//
//  main.swift
//  ProblemSolving_25192
//
//  Created by YOUJIM on 2023/07/08.
//

import Foundation

var set = Set<String>()
var cnt = 0

for _ in 0..<Int(readLine()!)! {
    let line = readLine()!
    
    if line == "ENTER" {
        cnt += set.count
        set.removeAll()
    }
    else { set.insert(line) }
}

cnt += set.count
print(cnt)
