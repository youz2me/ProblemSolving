//
//  main.swift
//  ProblemSolving_19532
//
//  Created by YOUJIM on 2023/05/20.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

for x in -999...999 {
    for y in -999...999 {
        if (input[0] * x + input[1] * y == input[2]) && input[3] * x + input[4] * y == input[5] {
            print("\(x) \(y)")
            exit(0)
        }
    }
}


