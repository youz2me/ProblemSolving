//
//  main.swift
//  ProblemSolving_9375
//
//  Created by YOUJIM on 2023/07/12.
//

import Foundation

let numOfCase = Int(readLine()!)!

for _ in 0..<numOfCase {
    var result = 1
    var items = [String : Int]()
    
    for _ in 0..<Int(readLine()!)! {
        let read = readLine()!.split(separator: " ")
        
        if items[String(read.last!)] == nil { items.updateValue(1, forKey: String(read.last!)) }
        else { items[String(read.last!)]! += 1 }
    }
    
    for wear in items { result *= (wear.value + 1) }
    
    print(result - 1)
}
