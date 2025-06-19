//
//  main.swift
//  1157
//
//  Created by YOUJIM on 6/18/25.
//

import Foundation

let input = readLine()!.uppercased().compactMap { String($0) }
var dict = [String: Int]()

for i in input {
    dict.updateValue((dict[i] ?? 0) + 1, forKey: i)
}

if dict.count == 1 {
    print(input[0])
}
else {
    let arr = dict.sorted(by: { $0.value > $1.value })
    
    if arr[0].value == arr[1].value {
        print("?")
    } else {
        print(arr[0].key)
    }
}
