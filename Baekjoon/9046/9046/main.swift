//
//  main.swift
//  9046
//
//  Created by YOUJIM on 6/18/25.
//

import Foundation

for _ in 0..<Int(readLine()!)! {
    guard let input = readLine()?.compactMap({ input in String(input) }) else { break }
    
    if input.count == 1 {
        print(input[0])
        continue
    }
    
    var arr = [String : Int]()
    
    for i in input {
        if i != " " {
            let value = arr[i] ?? 0
            arr.updateValue(value + 1, forKey: i)
        }
    }
    
    let sortedArr = arr.sorted(by: { $0.value > $1.value })
    
    if sortedArr.count >= 2 {
        if sortedArr[0].value == sortedArr[1].value {
            print("?")
        } else {
            print(sortedArr[0].key)
        }
    } else if sortedArr.count == 1 {
        print(sortedArr[0].key)
    } else {
        print("?") 
    }
    
}
