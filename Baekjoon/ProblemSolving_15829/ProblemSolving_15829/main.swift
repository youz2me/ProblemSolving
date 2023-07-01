//
//  main.swift
//  ProblemSolving_15829
//
//  Created by YOUJIM on 2023/06/21.
//

//import Foundation

readLine()
let input = Array(readLine()!).map{Int(exactly: $0.asciiValue!)! - 96}
var hash = 0
var mod = 1

for i in input{
    hash = (hash + i * mod) % 1234567891
    mod = (mod * 31) % 1234567891
}

print(hash)
