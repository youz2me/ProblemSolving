//
//  main.swift
//  ProblemSolving_9063
//
//  Created by YOUJIM on 2023/05/06.
//

//struct Rectangle {
//    var xMin : Int = 10001
//    var xMax : Int = -10001
//    var yMin : Int = 10001
//    var yMax : Int = -10001
//}
//
//import Foundation
//
//let numOfPoint = Int(readLine()!)!
//var rectangle = Rectangle()
//
//for _ in 0 ..< numOfPoint {
//    var coordinate = readLine()!.components(separatedBy: " ").map {Int($0)!}
//    if coordinate[0] <= rectangle.xMin {
//        rectangle.xMin = coordinate[0]
//    }
//    if coordinate[1] <= rectangle.yMin {
//        rectangle.yMin = coordinate[1]
//    }
//    if coordinate[0] >= rectangle.xMax {
//        rectangle.xMax = coordinate[0]
//    }
//    if coordinate[1] >= rectangle.yMax {
//        rectangle.yMax = coordinate[1]
//    }
//}
//
//if numOfPoint == 1 {
//    print("0")
//}
//else {
//    print((rectangle.xMax - rectangle.xMin) * (rectangle.yMax - rectangle.yMin))
//}

import Foundation

var maxPoint = (-10001, -10001)
var minPoint = (10001, 10001)

var numOfPoint = Int(readLine()!)!

for _ in 0..<numOfPoint {
    var coordinate = readLine()!.components(separatedBy: " ").map {Int($0)!}
    maxPoint.0 = max(coordinate[0], maxPoint.0)
    maxPoint.1 = max(coordinate[1], maxPoint.1)
    minPoint.0 = min(coordinate[0], minPoint.0)
    minPoint.1 = min(coordinate[1], minPoint.1)
}

print((maxPoint.0 - minPoint.0) * (maxPoint.1 - minPoint.1))

