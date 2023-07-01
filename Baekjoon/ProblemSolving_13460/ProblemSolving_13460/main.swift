//
//  main.swift
//  ProblemSolving_13460
//
//  Created by YOUJIM on 2023/04/28.
//

import Foundation

struct Coordinate {
    var x : Int
    var y : Int
}

// 미로의 가로와 세로 길이 입력받고 각각 상수로 할당
let temp = readLine()!.components(separatedBy: " ").map {Int($0)!}
let heightOfMaze = temp[0] // 세로
let weightOfMaze = temp[1] // 가로

// 미로 배열 선언하고 미로 입력받기
var maze : [[Any]] = [] // 미로
for _ in 1...heightOfMaze {
    maze.append(readLine()!.split(separator: ""))
}

//빨간 구슬 위치와 파란 구슬 위치, 구멍 위치 받을 변수 선언하고 반복문 돌면서 검색
var redMarble 
var blueMarble : Coordinate
var hole = [[Int]]()
for i in 0..<heightOfMaze {
    for j in 0..<weightOfMaze {
        if maze[i][j] as! String == "R" {
            redMarble.x = j
            redMarble.y = i
        }
    }
}


