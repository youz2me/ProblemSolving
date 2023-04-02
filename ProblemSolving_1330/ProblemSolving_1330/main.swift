//
//  main.swift
//  ProblemSolving_1330
//
//  Created by YOUJIM on 2023/04/02.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }

if input1[0] > input1[1] {
    print(">")
}
else if input1[0] < input1[1] {
    print("<")
}
else {
    print("==")
}
