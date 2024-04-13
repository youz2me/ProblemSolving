//
//  main.swift
//  ProblemSolving_15649
//
//  Created by YOUJIM on 4/12/24.
//

import Foundation


// MARK: variable

var inputs = readLine()!.split(separator: " ").map { Int($0)! } // N = input[0], M = input[1]
var nums = Array(1...inputs[0]) // 1부터 N까지 자연수를 저장하는 배열
var tempArr = [Int]() // permutation()에서 임시로 정답을 저장할 배열
var checkDuplication = [Bool](repeating: false, count: 10) // 백트래킹을 진행하며 중복을 체크할 배열
var answer = [String]() // 마지막에 출력할 정답 문자열


nums.permutation(0)
print(answer.joined(separator: "\n"))


// MARK: Extension
// - 배열 인자 값을 줄일 수 있음 -> 인자 복잡도 ⬇️

extension Array where Element == Int {
    func permutation(_ index: Int) {
        if tempArr.count == inputs[1] { // 길이가 M인 수열이 되면
            answer.append(tempArr.map { "\($0)" }.joined(separator: " ")) // answer 배열에 추가
            
            return
        }
        
        self.forEach { num in
            if checkDuplication[num] { return }
            checkDuplication[num] = true
            tempArr.append(num)
            self.permutation(index + 1)
            tempArr.removeLast()
            checkDuplication[num] = false
        }
    }
}

