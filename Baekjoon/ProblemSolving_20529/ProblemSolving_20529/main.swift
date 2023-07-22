//
//  main.swift
//  ProblemSolving_20529
//
//  Created by YOUJIM on 2023/07/22.
//

import Foundation

func mbti(_ mbti: String) -> Int {
    let E = mbti[mbti.index(mbti.startIndex, offsetBy: 0)],
        N = mbti[mbti.index(mbti.startIndex, offsetBy: 1)],
        T = mbti[mbti.index(mbti.startIndex, offsetBy: 2)],
        P = mbti[mbti.index(mbti.startIndex, offsetBy: 3)]
    
    var ans = 0
    
    if E == "E" { ans += 8 }
    if N == "N" { ans += 4 }
    if T == "T" { ans += 2 }
    if P == "P" { ans += 1 }
    
    return ans
}

func dist(a: Int, b: Int, c: Int) -> Int {
    var t = 0
    let ab = a ^ b
    let ac = a ^ c
    let bc = c ^ b
    
    t += String(ab, radix: 2).compactMap({ Int(String($0)) }).reduce(0, +)
    t += String(ac, radix: 2).compactMap({ Int(String($0)) }).reduce(0, +)
    t += String(bc, radix: 2).compactMap({ Int(String($0)) }).reduce(0, +)
    
    return t
}

let numOfCase = Int(readLine()!)!

for _ in 0..<numOfCase {
    let numOfMbti = Int(readLine()!)!
    let line = readLine()!.split(separator: " ").map(String.init)
    let mbtis = line.map { mbti($0) }
    
    if numOfMbti > 32 { print(0) }
    else {
        var distance = 13
        for i in 0 ..< (numOfMbti - 2) {
            for j in (i+1) ..< (numOfMbti - 1) {
                for k in (j + 1) ..< numOfMbti {
                    let t = dist(a: mbtis[i], b: mbtis[j], c: mbtis[k])
                    if distance > t { distance = t }
                }
            }
        }
        print(distance)
    }
}
