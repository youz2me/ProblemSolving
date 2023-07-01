//
//  main.swift
//  ProblemSolving_9498
//
//  Created by YOUJIM on 2023/04/03.
//

import Foundation

let score = Int(readLine()!)!

if score >= 90 {
    print("A")
}
else if score >= 80 && score <= 89 {
    print("B")
}
else if score >= 70 && score <= 79 {
    print("C")
}
else if score >= 60 && score <= 69 {
    print("D")
}
else {
    print("F")
}
