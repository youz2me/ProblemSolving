//
//  main.swift
//  ProblemSolving_18111
//
//  Created by YOUJIM on 2023/07/01.
//

// 가장 높은 높이부터 낮은 높이까지 경우를 나누어 생각하면서 가능한 경우 possible에 추가
// nmb[0] = n, nmb[1] = m, nmb[2] = b

import Foundation

var nmb = readLine()!.split(separator: " ").map { Int($0)! }
var blocks = [Int]() // 블럭들의 높이 배열
for _ in 0 ..< nmb[0] { blocks += readLine()!.split(separator: " ").map { Int($0)! } }

var max = blocks.max()! // 최대 높이
var min = blocks.min()! // 최소 높이
var minTime = Int.max
var index = 0

for floor in min...max { // 가장 낮은 높이부터 높은 높이까지 돌면서
    var time = 0
    var inventory = nmb[2]
    
    for i in 0..<blocks.count {  // 블럭들을 하나하나 순회하면서
        if blocks[i] > floor { // 만약 블럭의 높이가 현재 타겟 높이(floor)보다 높으면
            time += ((blocks[i] - floor) * 2) // 블럭을 제거하는데 걸린 시간을 구해서 더해주고
            inventory += (blocks[i] - floor) // 제거된 블럭의 수만큼 인벤토리에 있는 블럭의 수에 더해줌
        }
        else { // 블럭의 높이가 현재 타겟 높이(floor)보다 같거나 낮으면
            time += (floor - blocks[i]) // 블럭을 쌓는데 걸리는 시간 계산해서 더해주고
            inventory -= (floor - blocks[i]) // 쌓은 블럭의 수만큼 인벤토리에 있는 블럭의 수에서 빼줌
        }

    }
    if (time <= minTime) && (inventory >= 0) { // 블럭의 수가 모자라지 않고 시간이 최소면(min부터 max까지 for문을 돌리므로 <= 로 하면 최소 시간 중 최대 높이를 구할 수 있음)
        minTime = time // 최소 시간과
        index = floor // 그때의 높이를 업데이트해줌
    }
}

print("\(minTime) \(index)")

