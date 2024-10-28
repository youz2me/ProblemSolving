//
//  main.swift
//  Programmers_135807
//
//  Created by YOUJIM on 10/29/24.
//

/*
 철수가 가진 카드들에 적힌 모든 숫자를 나눌 수 있고 영희가 가진 카드들에 적힌 모든 숫자들 중 하나도 나눌 수 없는 양의 정수 a -> arrayA 원소들의 최대공약수이면서 arrayB 원소들의 서로소
 영희가 가진 카드들에 적힌 모든 숫자를 나눌 수 있고, 철수가 가진 카드들에 적힌 모든 숫자들 중 하나도 나눌 수 없는 양의 정수 a -> arrayB 원소들의 최대공약수이면서 arrayA 원소들의 서로소
 
 즉 arrayA 원소들의 최대공약수이면서 arrayB 원소들의 서로소인 수 또는 arrayB 원소들의 최대공약수이면서 arrayA 원소들의 서로소인 수 중 더 큰 수를 리턴
 둘 다 없으면 0 리턴
 
 최대공약수는 유클리드 호제법 사용
 서로소는 에라토스테네스의 체 사용
 
 */

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func getGCD(of array: [Int]) -> Int {
    return array.reduce(array[0]) { gcd($0, $1) }
}

func canDivideAll(_ divisor: Int, array: [Int]) -> Bool {
    return array.allSatisfy { $0 % divisor == 0 }
}

func cannotDivideAny(_ divisor: Int, array: [Int]) -> Bool {
    return array.allSatisfy { $0 % divisor != 0 }
}

func solution(_ arrayA: [Int], _ arrayB: [Int]) -> Int {
    let gcdA = getGCD(of: arrayA)
    let gcdB = getGCD(of: arrayB)
    
    var result = 0
    
    if canDivideAll(gcdA, array: arrayA) && cannotDivideAny(gcdA, array: arrayB) {
        result = max(result, gcdA)
    }
    
    if canDivideAll(gcdB, array: arrayB) && cannotDivideAny(gcdB, array: arrayA) {
        result = max(result, gcdB)
    }
    
    return result
}

print(solution([10, 20], [5, 17]))
