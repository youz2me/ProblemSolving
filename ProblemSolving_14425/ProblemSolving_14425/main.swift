//
//  main.swift
//  ProblemSolving_14425
//
//  Created by YOUJIM on 2023/06/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
var S = [String : Int]()
var cnt = 0

for _ in 0 ..< input[0] { S.updateValue(0, forKey: readLine()!) }
for _ in 0 ..< input[1] {
    var temp = readLine()!
    if S["\(temp)"] != nil { cnt += 1 }
}

print(cnt)

