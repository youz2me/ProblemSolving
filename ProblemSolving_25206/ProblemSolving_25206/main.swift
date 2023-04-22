//
//  main.swift
//  ProblemSolving_25206
//
//  Created by YOUJIM on 2023/04/22.
//

import Foundation

var totalCredit = 0.0 //학점의 총합
var totalScore = 0.0 //학점*과목평점의 합

for _ in 0...19 {
    let input = readLine()!.components(separatedBy: " ")
    let credit = Double(input[1])!
    let grade = input[2]
    
    if grade != "P" { totalCredit = totalCredit + credit}
    
    if grade != "P" {
        if grade == "A+" { totalScore = totalScore + (4.5 * credit)}
        else if grade == "A0" { totalScore = totalScore + (4.0 * credit)}
        else if grade == "B+" { totalScore = totalScore + (3.5 * credit)}
        else if grade == "B0" { totalScore = totalScore + (3.0 * credit)}
        else if grade == "C+" { totalScore = totalScore + (2.5 * credit)}
        else if grade == "C0" { totalScore = totalScore + (2.0 * credit)}
        else if grade == "D+" { totalScore = totalScore + (1.5 * credit)}
        else if grade == "D0" { totalScore = totalScore + (1.0 * credit)}
        else if grade == "F" { totalScore = totalScore + (0.0 * credit)}
    }
}

let finalScore = round(totalScore/totalCredit * pow(10, 6)) / pow(10, 6)
print(finalScore)
