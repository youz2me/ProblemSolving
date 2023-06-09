//
//  main.swift
//  PrblemSolving_10828
//
//  Created by YOUJIM on 2023/06/09.
//

//import Foundation

var stack = [Int]()

for _ in 1...Int(readLine()!)! {
    let input = readLine()!
    
    if input == "top" {
        if let top = stack.last {
            print(top)
        }
        else { print("-1")}
    }
    else if input == "size" {
        print(stack.count)
    }
    else if input == "empty" {
        if stack.isEmpty == true {print("1")}
        else {print("0")}
    }
    else if input == "pop" {
        if let pop = stack.popLast() {
            print(pop)
        }
        else {print("-1")}
    }
    else {
        let inputs = input.split(separator: " ")
        stack.append(Int(inputs[1])!)
    }
}
