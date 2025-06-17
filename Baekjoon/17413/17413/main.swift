//
//  main.swift
//  17413
//
//  Created by YOUJIM on 6/17/25.
//

/// 띄어쓰기 있는 경우 고려
/// <>로 감싸진 경우 고려
/// <> 밖의 단어는 띄어쓰기를 기준으로 reversed 된다
/// <> 안의 단어는 유지되어야 한다

import Foundation

let input = readLine()!

func solve(str: String) -> String {
    var result = ""
    var word = ""
    var isWord = false
    
    for i in str {
        if i == "<" {
            result += word.reversed()
            result += "\(i)"
            isWord = true
            word = ""
        }
        else if i == ">" {
            result += "\(i)"
            isWord = false
        }
        else if isWord {
            result += "\(i)"
        }
        else if i == " " {
            if !word.isEmpty {
                result += word.reversed()
                word = ""
            }
            result += " "
        } else {
            word += "\(i)"
        }
    }
    
    if !word.isEmpty {
        result += String(word.reversed())
    }
    
    return result
}

print(solve(str: input))
