//
//  main.swift
//  ProblemSolving_14681
//
//  Created by YOUJIM on 2023/04/05.
//

import Foundation

let xCoordinate = Int(readLine()!)!
let yCoordinate = Int(readLine()!)!

if xCoordinate > 0 && yCoordinate > 0 {
    print("1")
}
else if xCoordinate < 0 && yCoordinate > 0 {
    print("2")
}
else if xCoordinate < 0 && yCoordinate < 0 {
    print("3")
}
else if xCoordinate > 0 && yCoordinate < 0 {
    print("4")
}

