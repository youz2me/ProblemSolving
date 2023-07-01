//
//  main.swift
//  Programmers_42748
//
//  Created by YOUJIM on 2023/05/21.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    // 리턴할 배열 생성
    // 연산을 적용했을 때 나온 결과(k번째 숫자)를 arrayToReturn에 할당
    var arrayToReturn = [Int]()
    
    // commands를 루프문으로 돌면서
    for command in commands {
        // i번째부터 j번째까지 잘라서 정렬하고 sliceArr에 넣어줌
        var sliceArr = array[(command[0] - 1)..<command[1]].sorted()
        // k번째 원소를 arrayToReturn에 append
        arrayToReturn.append(command[2] - 1)
    }
    
    return arrayToReturn
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))


