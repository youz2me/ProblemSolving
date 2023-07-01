//
//  main.swift
//  ProblemSolving_5073
//
//  Created by YOUJIM on 2023/05/08.
//

import Foundation

while true {
    var triangle = readLine()!.components(separatedBy: " ").map {Int($0)!}
    let total = triangle[0] + triangle[1] + triangle[2]
    triangle.sort()
    
    if triangle[0] == 0 && triangle[1] == 0 && triangle[2] == 0 { break }
    
    if Set(triangle).count == 3 && total > 2 * triangle[2] { print("Scalene") }
    else if Set(triangle).count == 2 && total > 2 * triangle[2] { print("Isosceles") }
    else if Set(triangle).count == 1 && total > 2 * triangle[2] { print("Equilateral") }
    else { print("Invalid") }
}

    

