//
//  main.swift
//  ProblemSolving_17219
//
//  Created by YOUJIM on 2023/06/13.
//

//import Foundation

var info = [String: String]()
var passwords = ""

var input = readLine()!.split{$0 == " "}.map {Int($0)!}

for _ in 1...input[0] {
    let temp = readLine()!.split{$0 == " "}.map {String($0)}
    info[temp[0]] = temp[1]
}

for _ in 1...input[1] {
    let site = readLine()!
    passwords += "\(info[site]!)\n"
}

print(passwords)
