//
//  main.swift
//  ProblemSolving_2252
//
//  Created by YOUJIM on 2023/07/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

// 그래프의 노드 수, 간선 수 입력
var graph = [Int: [Int]]() // 인접 리스트를 표현하기 위한 딕셔너리
var indegree = [Int](repeating: 0, count: input[0] + 1) // 각 노드의 진입 차수를 저장하는 배열

indegree[0] = -1 // 인덱스 0은 사용하지 않으므로 임의의 값을 설정해줌

// 간선 정보 입력
for _ in 0 ..< input[1] {
    let info = readLine()!.split(separator: " ").map { Int($0)! }

    // 인접 리스트를 구성하는 딕셔너리에 간선 정보 추가함 (화살표 생성)
    if graph[info[0]] == nil { graph[info[0]] = [info[1]] }
    else {
        graph[info[0]]!.append(info[1])
    }

    // 진입 차수 배열 업데이트
    indegree[info[1]] += 1
}

var stack = [Int]() // 스택을 활용한 임시 저장소

// 진입 차수가 0인 노드들을 스택에 추가
for i in 1...input[0] {
    if indegree[i] == 0 {
        stack.append(i)
    }
}

var result = [Int]() // 위상 정렬 결과를 저장하는 배열

// 스택이 빌 때까지 노드를 처리하면서 위상 정렬
while !stack.isEmpty {
    let now = stack.removeLast() // 스택에서 노드를 꺼내어 현재 처리 중인 노드로 설정
    result.append(now) // 결과 배열에 현재 노드 추가 (위상 정렬 순서대로)

    // 현재 노드와 연결된 노드들에 대하여 진입 차수 갱신
    if let sequence = graph[now] {
        for i in sequence {
            indegree[i] -= 1 // 현재 노드를 거쳐서 갈 수 있는 노드들의 진입 차수 감소
            if indegree[i] == 0 { // 진입 차수가 0이 된 경우, 스택에 추가하여 다음으로 처리될 수 있도록 함
                stack.append(i)
            }
        }
    }
}

// 위상 정렬된 결과 출력
print(result.reduce(into: "", { $0 += "\($1) "}).dropLast())

