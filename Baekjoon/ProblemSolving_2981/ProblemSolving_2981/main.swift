//
//  main.swift
//  ProblemSolving_2981
//
//  Created by YOUJIM on 4/17/24.
//

import Foundation

// 유클리드 호제법을 이용해서 최대공약수 계산
func GCD(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return GCD(b, a % b)
}

var inputs = [Int]() // 입력받은 수를 저장할 배열 선언
var result = [Int]() // 출력할 결과를 저장할 배열 선언

// 1️⃣ 배열로 입력받은 후에 오름차순으로 정렬하기
for _ in 0 ..< Int(readLine()!)! { inputs.append(Int(readLine()!)!) } // 입력
inputs.sort() // 정렬

// 2️⃣ 이웃한 수들끼리 뺀 수들의 최대공약수 구하기
var gcd = inputs[1] - inputs[0] // 최대공약수 초기화

for i in 2 ..< inputs.count { gcd = GCD(gcd, (inputs[i] - inputs[i - 1])) } // 최대공약수 순차적으로 구하기

// 3️⃣ 최대공약수의 1을 제외한 모든 약수 구하기
// 1부터 최대공약수까지 for문을 돌면 시간 초과 발생
// 1부터 최대공약수의 제곱근까지 for문을 돌도록 최적화
for i in 1 ... Int(sqrt(Double(gcd))) {
    if gcd % i == 0 { // 나머지가 0이면 약수
        result.append(i)
        result.append(gcd / i) // z * i = gcd임을 이용해 z도 result에 추가
    }
}

result = Array(Set(result)).sorted() // 중복 제거를 위한 Set 임시 래핑
result.remove(at: 0) // 1 제거
print(result.map { String($0) }.joined(separator: " ")) // 출력
