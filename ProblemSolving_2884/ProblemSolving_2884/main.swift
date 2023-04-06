//
//  main.swift
//  ProblemSolving_2884
//
//  Created by YOUJIM on 2023/04/06.
//

import Foundation

var time = readLine()!.split(separator: " ").map { Int(String($0))! }

//0시
if time[0] == 0 {
    //0분~44분
    if time[1] < 45 {
        print("23 \(15 + time[1])")
    }
    //45분~59분
    else {
        print("0 \(time[1] - 45)")
    }
}

//1시~23시
else if (time[0] >= 1) && (time[0] <= 23) {
    //0분~44분
    if time[1] < 45 {
        print("\(time[0] - 1) \(15 + time[1])")
    }
    //45분~59분
    else {
        print("\(time[0]) \(time[1] - 45)")
    }
}

