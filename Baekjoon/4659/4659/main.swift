//
//  main.swift
//  4659
//
//  Created by YOUJIM on 6/17/25.
//

import Foundation

func solve(password: String) -> String {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let chars = Array(password)
    
    if Set<Character>(chars).isDisjoint(with: vowels) { return "<\(password)> is not acceptable." }
    
    for i in 0..<chars.count {
        if i >= 2 {
            let char1 = chars[i-2]
            let char2 = chars[i-1]
            let char3 = chars[i]
            
            let isVowel1 = vowels.contains(char1)
            let isVowel2 = vowels.contains(char2)
            let isVowel3 = vowels.contains(char3)
            
            if (isVowel1 && isVowel2 && isVowel3) ||
               (!isVowel1 && !isVowel2 && !isVowel3) {
                return "<\(password)> is not acceptable."
            }
        }
        
        if i >= 1 {
            let prev = chars[i-1]
            let curr = chars[i]
            
            if prev == curr && prev != "e" && prev != "o" {
                return "<\(password)> is not acceptable."
            }
        }
    }
    
    return "<\(password)> is acceptable."
}

while true {
    let password = readLine()!
    if password == "end" { break }
    
    print(solve(password: password))
}
