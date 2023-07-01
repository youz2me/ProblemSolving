//
//  main.swift
//  ProblemSolving_2503
//
//  Created by YOUJIM on 2023/05/07.
//

import Foundation

func countStrike(string1 : [String], string2 : [String]) -> Int {
    var tempCount = 0
    
    let str1First = string1[string1.startIndex]
    let str1Second = string1[string1.index(after: string1.startIndex)]
    let str1Third = string1[string1.index(before: string1.endIndex)]
    
    let str2First = string2[string2.startIndex]
    let str2Second = string2[string2.index(after: string2.startIndex)]
    let str2Third = string2[string2.index(before: string2.endIndex)]
    
    if str1First == str2First { tempCount = tempCount + 1 }
    if str1Second == str2Second { tempCount = tempCount + 1}
    if str1Third == str2Third { tempCount = tempCount + 1 }
    return tempCount
}

func countBall(string1 : [String], string2 : [String]) -> Int {
    var tempCount = 0
    
    let str1First = string1[string1.startIndex]
    let str1Second = string1[string1.index(after: string1.startIndex)]
    let str1Third = string1[string1.index(before: string1.endIndex)]
    
    let str2First = string2[string2.startIndex]
    let str2Second = string2[string2.index(after: string2.startIndex)]
    let str2Third = string2[string2.index(before: string2.endIndex)]
    
    if str1First == str2Second || str1First == str2Third { tempCount = tempCount + 1}
    if str1Second == str2First || str1Second == str2Third { tempCount = tempCount + 1}
    if str1Third == str2First || str1Third == str2Second { tempCount = tempCount + 1}
    return tempCount
}

func isZero(string1 : [String], string2 : [String]) -> Int {
    var tempCount = 0
    
    let str1First = string1[string1.startIndex]
    let str1Second = string1[string1.index(after: string1.startIndex)]
    let str1Third = string1[string1.index(before: string1.endIndex)]
    
    let str2First = string2[string2.startIndex]
    let str2Second = string2[string2.index(after: string2.startIndex)]
    let str2Third = string2[string2.index(before: string2.endIndex)]
    
    if (str1First != str2First) && (str1First != str2Second) && (str1First != str2Third) { tempCount = tempCount + 1}
    if (str1Second != str2First) && (str1Second != str2Second) && (str1Second != str2Third) { tempCount = tempCount + 1}
    if (str1Third != str2First) && (str1Third != str2Second) && (str1Third != str2Third) { tempCount = tempCount + 1 }
    
    return tempCount
}


var qa = [[Int]]()
var possibleNum = [Int]()

for _ in 0 ..< Int(readLine()!)! { qa.append(readLine()!.components(separatedBy: " ").map {Int($0)!}) }

for i in 123...987 {
    let iSplit = String(i).map{String($0)}
    
    if iSplit.contains("0") == false && Set(iSplit).count == 3 {
        var count = 0
        for j in 0 ..< qa.count {
            let qaSplit = String(qa[j][0]).map{String($0)}
            
            if qa[j][1] == 3 {
                print("1")
                exit(0)
            }
            else if qa[j][1] == 2  && qa[j][2] == 0{
                    if countStrike(string1: qaSplit, string2: iSplit) == 2 && countBall(string1: qaSplit, string2: iSplit) == 0 { count = count + 1 }
            }
            else if qa[j][1] == 1 && qa[j][2] == 0 {
                    if countStrike(string1: qaSplit, string2: iSplit) == 1 && countBall(string1: qaSplit, string2: iSplit) == 0 { count = count + 1 }
            }
            else if qa[j][1] == 1 && qa[j][2] == 1 {
                if countStrike(string1: qaSplit, string2: iSplit) == 1 && countBall(string1: qaSplit, string2: iSplit) == 1 { count = count + 1 }
            }
            else if qa[j][1] == 1 && qa[j][2] == 2 {
                if countStrike(string1: qaSplit, string2: iSplit) == 1 && countBall(string1: qaSplit, string2: iSplit) == 2 { count = count + 1 }
            }
            else if qa[j][1] == 0 && qa[j][2] == 0 {
                if isZero(string1: qaSplit, string2: iSplit) == 3 { count = count + 1 }
            }
            else if qa[j][1] == 0 && qa[j][2] == 1 {
                if countStrike(string1: qaSplit, string2: iSplit) == 0 && countBall(string1: qaSplit, string2: iSplit) == 1 { count = count + 1 }
            }
            else if qa[j][1] == 0 && qa[j][2] == 2 {
                if countStrike(string1: qaSplit, string2: iSplit) == 0 && countBall(string1: qaSplit, string2: iSplit) == 2 { count = count + 1 }
            }
            else if qa[j][1] == 0 && qa[j][2] == 3 {
                if countStrike(string1: qaSplit, string2: iSplit) == 0 && countBall(string1: qaSplit, string2: iSplit) == 3 { count = count + 1 }
            }
        }
        if count == qa.count { possibleNum.append(i) }
    }
}

print(possibleNum.count)
