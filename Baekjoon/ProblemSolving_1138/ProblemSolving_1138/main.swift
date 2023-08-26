//
//  main.swift
//  ProblemSolving_1138
//
//  Created by YOUJIM on 2023/08/26.
//

import Foundation

let num = Int(readLine()!)!
let input = readLine()!.split(separator:" ").map{ Int(String($0))! }
var result = Array(repeating : 0, count : num)

for i in 0 ..< num {
    var temp = 0
    for j in 0 ..< num {
        if result[j] == 0 || result[j] > i + 1 {
            if temp == input[i] {
                result[j] = i + 1
                break
            }
            else { temp += 1 }
        }
    }
}

result.forEach { print($0, terminator : " " ) }


