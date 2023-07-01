//
//  main.swift
//  ProblemSolving_2961
//
//  Created by YOUJIM on 2023/05/22.
//

import Foundation

// 조합 구현 코드
// array에서 n개를 뽑는 모든 경우를 result 배열로 리턴해줌
func combination<T>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }

    func cycle(_ index: Int, _ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        for i in index..<array.count {
            cycle(i + 1, now + [array[i]])
        }
    }
    cycle(0, [])
    
    return result
}

var foods = [[Int]]()
var minOfdifference = Int.max

// 입력받기
var numOfFood = Int(readLine()!)!
for _ in 1...numOfFood { foods.append(readLine()!.components(separatedBy: " ").map { Int($0)! })}

// 브루트포스 이용
// 1개를 뽑는 경우부터 모두 뽑는 경우까지 개수를 늘려가며 생각해줌
for num in 1...numOfFood {
    // numOfFood개의 재료 중 num개만큼 뽑음 -> 이건 조합
    let selectFoods = combination(foods, num)
    // 뽑은 재료들을 for문을 돌면서
    for food in selectFoods {
        // 쓴 맛의 합과 신 맛의 곱 계산
        var sourTotal = 1 // 곱이라서 초기값 1
        var bitterTotal = 0 // 합이라서 초기값 0
        for i in 0..<food.count {
            // 쓴맛 신맛 각각 total 구해줌
            sourTotal *= food[i][0]
            bitterTotal += food[i][1]
        }
        // 두개의 차가 지금까지 나온 차의 최솟값보다 작으면 차의 최솟값 업데이트
        if (sourTotal - bitterTotal) >= 0 && (sourTotal - bitterTotal) < minOfdifference {
            minOfdifference = sourTotal - bitterTotal
        }
        else if (bitterTotal - sourTotal) >= 0 && (bitterTotal - sourTotal) < minOfdifference {
            minOfdifference = bitterTotal - sourTotal
        }
    }
}

// 차의 최솟값 출력
print(minOfdifference)
