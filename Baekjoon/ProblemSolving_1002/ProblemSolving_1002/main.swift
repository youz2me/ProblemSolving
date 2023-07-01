//
//  main.swift
//  ProblemSolving_1002
//
//  Created by YOUJIM on 2023/06/22.
//

// input[0] == 조규현의 x1
// input[1] == 조규현의 y1
// input[2] == 조규현이 계산한 류재명과의 거리 r1
// input[3] == 백승환의 x1
// input[4] == 백승환의 y1
// input[5] == 백승환이 계산한 류재명과의 거리 r2

// 논란이 있는 문제였음 ㅋㅋ ㅜ 다음에 풀래

import Foundation

for _ in 0 ..< Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{ Double($0)! }
    let distance = sqrt(Double(pow(input[0] - input[1], 2) + pow(input[3] - input[4], 2)))

    if distance == 0 && input[2] == 0 && input[5] == 0 { print(1) }
    else {
        if input[0] == input[3] && input[1] == input[4] && input[3] == input[5] { print(-1) }
        else if (distance > (input[2] + input[5])) || (distance < abs(input[2] - input[5])) { print(0) }
        else if ((distance == (input[2] + input[5]))) || (distance == abs(input[2] - input[5])) { print(1) }
        else if distance < (input[2] + input[5]) { print(2) }
    }
}
