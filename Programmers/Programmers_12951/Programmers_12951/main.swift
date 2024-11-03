//
//  main.swift
//  Programmers_12951
//
//  Created by YOUJIM on 11/3/24.
//

func solution(_ s:String) -> String {
    let arr = Array(s)
    var answer = ""
    
    for i in 0 ..< arr.count {
        if i == 0 || arr[i - 1] == " " {
            answer += arr[i].uppercased()
        } else {
            answer += String(arr[i]).lowercased()
        }
    }
    
    return answer
}

print(solution("3people unFollowed me"))
