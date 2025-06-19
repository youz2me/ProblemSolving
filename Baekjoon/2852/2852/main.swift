//
//  main.swift
//  2852
//
//  Created by YOUJIM on 6/19/25.
//

import Foundation

var firstTeamScore = 0, secondTeamScore = 0
var firstTeamWinTime = 0, secondTeamWinTime = 0
var lastTime = 0

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    let time = input[1].split(separator: ":").map { Int($0)! }
    let currentTime = time[0] * 60 + time[1]
    let timeDiff = currentTime - lastTime
    
    (firstTeamScore > secondTeamScore) ? (firstTeamWinTime += timeDiff) : (secondTeamScore > firstTeamScore) ? (secondTeamWinTime += timeDiff) : nil
    
    ((Int(input[0])! == 1) ? (firstTeamScore += 1) : (secondTeamScore += 1))
    
    lastTime = currentTime
}

let remainingTime = 48 * 60 - lastTime

(firstTeamScore > secondTeamScore) ? (firstTeamWinTime += remainingTime) : (secondTeamScore > firstTeamScore) ? (secondTeamWinTime += remainingTime) : nil

print(String(format: "%02d:%02d", firstTeamWinTime / 60, firstTeamWinTime % 60))
print(String(format: "%02d:%02d", secondTeamWinTime / 60, secondTeamWinTime % 60))
