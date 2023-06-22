//
//  main.swift
//  ProblemSolving_4344
//
//  Created by YOUJIM on 2023/06/22.
//

import Foundation

for _ in 1...Int(readLine()!)! {
    var input = readLine()!.split(separator: " ").map{ Double($0)! }
    let count = input[0]
    
    input.remove(at: 0)
    
    let mean = (input.reduce(0) { $0 + $1 }) / count
    input = input.filter{ $0 > mean }
    
    print("\(String(format: "%.3f", round((Double(input.count) / count * 100.0) * 1000.0) / 1000.0))%")
}
