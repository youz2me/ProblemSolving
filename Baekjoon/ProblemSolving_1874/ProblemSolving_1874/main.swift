//
//  main.swift
//  ProblemSolving_1874
//
//  Created by YOUJIM on 5/1/24.
//

import Foundation

var sequence = [Int]()
var result = [String]() // 출력할 배열
var top = 1 // 오름차순 구현을 위해 현재 위치를 나타내는 변수 top 선언 및 1로 초기화
var isBreak = false

for _ in 1...Int(readLine()!)! { // n만큼 for문 돌면서
    let element = Int(readLine()!)! // 수열을 이루는 1 이상 n 이하의 정수 입력 (중복 x)
    
    while top <= element { // top이 element 이하면
        sequence.append(top) // 현재 위치를 배열에 추가
        top += 1 // 오름차순 push를 위해 top을 1 증가시킴
        result.append("+") // 결과 배열에 + 추가
    }
    if sequence.last == element { // 베열의 가장 끝 값이 element와 일치하면
        _ = sequence.popLast() // 그 수를 pop함
        result.append("-") // 그리고 마이너스를 결과 배열에 추가
    }
    // top 값이 입력한 숫자보다 크면 입력한 수를 꺼내기 위해 계속 POP을 해야 하기 때문에 정답을 만들 수 없음
    else { isBreak = true } // top이 element보다 크면 NO 출력을 위해 isBreak 변수 상태 토글
}

if isBreak { print("NO") }
else { for value in result { print(value) } }

