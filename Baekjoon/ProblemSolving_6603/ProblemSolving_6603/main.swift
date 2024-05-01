//
//  main.swift
//  ProblemSolving_6603
//
//  Created by YOUJIM on 4/15/24.
//

import Foundation

var input = [Int]() // 각 입력 저장하는 배열
var result = [Int](repeating: 0, count: 6) // 로또 번호 저장할 배열

func DFS(_ start: Int, _ depth: Int) {
    if depth == 6 { // depth가 6이 되면
        print(result.map { String($0) }.joined(separator: " ")) // 결과를 출력하고
        return // 탐색 종료
    }
    
    for i in start ..< input.count { // start 노드부터 탐색
        result[depth] = input[i] // result 배열의 해당 depth 위치에 input 배열 start 위치에 있는 원소 추가
        DFS(i + 1, depth + 1) // 옆 원소로 옮겨가서 탐색
    }
}

while true {
    input = readLine()!.split(separator: " ").map { Int($0)! } // 입력
    
    if input.removeFirst() == 0 { break } // 0만 입력되면 break
    
    DFS(0, 0) // start = 0, depth = 0에서 탐색 시작
    print() // 각 케이스 사이 공백
}
