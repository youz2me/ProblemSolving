//
//  main.swift
//  20291
//
//  Created by YOUJIM on 6/18/25.
//

import Foundation

var dict = [String: Int]()

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: ".").map { String($0) }
    
    dict[input[1], default: 0] += 1
}

for i in dict.sorted(by: { $0.key < $1.key }) {
    print("\(i.key) \(i.value)")
}
