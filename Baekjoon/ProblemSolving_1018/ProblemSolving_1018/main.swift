//
//  main.swift
//  ProblemSolving_1018
//
//  Created by YOUJIM on 2023/06/19.
//

//import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let m = input[0]
let n = input[1]
var minCount = m * n
var coordinate = [[String]]()

for _ in 0 ..< m { coordinate.append(readLine()!.map{ String($0) }) }

for i in 0 ..< (m - 7) {
    for j in 0 ..< (n - 7) {
        var count1 = 0
        var count2 = 0
        for x in i ..< (i + 8) {
            for y in j ..< (j + 8) {
                if (x + y) % 2 == 0 {
                    if coordinate[x][y] == "B" { count1 += 1 }
                    else { count2 += 1 }
                } else {
                    if coordinate[x][y] == "W" { count1 += 1 }
                    else { count2 += 1 }
                }
            }
        }
        minCount = min(minCount, count1, count2)
    }
}

print(minCount)
