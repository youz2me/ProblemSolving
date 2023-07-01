//
//  main.swift
//  ProblemSolving_10845
//
//  Created by YOUJIM on 2023/06/15.
//

//import Foundation

struct queue<T> {
    private var queue = [T]()
    
    mutating func push(_ element: T) {
        queue.append(element)
    }
    
    mutating func pop() {
        if queue.isEmpty { print(-1) }
        else { print(queue.removeFirst()) }
        
    }
    
    mutating func size() {
        print(queue.count)
    }
    
    mutating func empty() {
        if queue.isEmpty { print(1) }
        else { print(0) }
    }
    
    mutating func front() {
        print(queue.first ?? -1)
    }
    
    mutating func back() {
        print(queue.last ?? -1)
    }
}

var nums = queue<Int>()

for _ in 1...Int(readLine()!)! {
    var command = readLine()!
    
    switch command {
    case "front": nums.front()
    case "size": nums.size()
    case "empty": nums.empty()
    case "pop": nums.pop()
    case "back": nums.back()
    default:
        var element = command.split(separator: " ")[1]
        nums.push(Int(element)!)
    }
}

