////
////  main.swift
////  ProblemSolving_2231
////
////  Created by YOUJIM on 2023/05/18.
////
//
//import Foundation
//
//func combination<T: Comparable>(_ array : [T], _ n: Int) -> [[T]] {
//    var result = [[T]]()
//    if array.count < n { return result }
//
//    func cycle(_ index: Int, _ now: [T]) {
//        if now.count == n {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            cycle(i - 1, now + [array[i]])
//        }
//    }
//
//    cycle(0, [])
//
//    return result
//}
//
//let input = readLine()!.components(separatedBy: "").map {Int($0)!}
//let forCombination = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//var minConstructor = 10000001
//
//var nums = [Int]()
//let comb = combination(forCombination, input.count)
//for i in comb {
//    var temp = input
//    for j in i {
//        temp = temp - j
//    }
//    if temp =
//
//}
//
//
//for i in forCombination {
//    for j in forCombination {
//        for k in forCombination {
//            var temp = input - i - j - k
//            if temp == (100 * i + 10 * j + k) {
//                if temp < minConstructor {
//                    minConstructor = temp
//                }
//            }
//        }
//    }
//}
//
//print(minConstructor)


import Foundation

let input = readLine()!
let inputToInt = Int(input)!
var minConstructor = 10000001

for i in 0 ..< inputToInt {
    var temp = inputToInt
    let splitInput = String(i).map{Int(String($0))!}
    for j in splitInput {
        temp = temp - j
    }
    if temp == i {
        minConstructor = temp
        print(minConstructor)
        break
    }
}

if minConstructor == 10000001 { print("0") }

