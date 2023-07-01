//
//  main.swift
//  Programmers_42840
//
//  Created by YOUJIM on 2023/05/12.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPersonWay = [1, 2, 3, 4, 5]
    let secondPersonWay = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPersonWay = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var numOfCorrect = [0, 0, 0]
    
    for i in 0...answers.count - 1 {
        if firstPersonWay[i % 5] == answers[i] { numOfCorrect[0] += 1 }
        if secondPersonWay[i % 8] == answers[i] { numOfCorrect[1] += 1 }
        if thirdPersonWay[i % 10] == answers[i] { numOfCorrect[2] += 1 }
    }
    
    let sortedNumOfCorrect = numOfCorrect.sorted()
    
    if sortedNumOfCorrect[1] == sortedNumOfCorrect[2] {
        if sortedNumOfCorrect[0] == sortedNumOfCorrect[1] { return [1, 2, 3] }
        
        if numOfCorrect[0] == numOfCorrect[1] { return [1, 2] }
        else if numOfCorrect[1] == numOfCorrect[2] { return [2, 3] }
        return [1, 3]
            }
    
    if numOfCorrect.max() == numOfCorrect[0] { return [1] }
    else if numOfCorrect.max() == numOfCorrect[1] { return [2] }
    return [3]
}

print(solution([1, 3, 2, 4, 2]))
