//
//  main.swift
//  ProblemSolving_1182
//
//  Created by YOUJIM on 4/17/24.
//

import Foundation


var inputs = readLine()!.split(separator: " ").map { Int($0)! } // input[0] = N, input[1] = S
var nums = readLine()!.split(separator: " ").map { Int($0)! } // 원소 입력
var result = 0 // 총 경우의 수

// 1️⃣ 모든 경우의 수를 다 돌면서
func DFS(_ num: Int, _ depth: Int) { // num은 부분수열 원소들의 합, 트리의 depth는 각 원소를 나타냄
    if depth + 1 == inputs[0] { // 트리의 끝까지 탐색이 끝나면
        // 2️⃣ 부분수열의 원소를 다 더한 값이 S가 되면
        // 3️⃣ 경우의 수를 카운트
        if num == inputs[1] { result += 1 } // S와 부분수열 원소들의 합이 맞는지 비교해서 맞으면 result에 1을 더함
        return
    }
    DFS(num + nums[depth + 1], depth + 1) // 왼쪽 트리 탐색
    DFS(num, depth + 1) // 오른쪽 트리 탐색
}

DFS(0, -1)
if inputs[1] == 0 { result -= 1 } // 만약 S가 0이라면 공집합의 경우를 고려해 result에서 하나를 빼줘야 함 (크기가 양수인 부분수열만 카운트)
print(result)


