//
//  main.swift
//  ProblemSolving_11478
//
//  Created by YOUJIM on 2023/07/07.
//

import Foundation

var chars = readLine()!.map{String($0)}
var strs = Set<String>()

for i in 0..<chars.count {
    var str = ""
    for j in i..<chars.count {
        str = str + chars[j]
        strs.insert(str)
    }
}

print(strs.count)
