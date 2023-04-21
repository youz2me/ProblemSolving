//
//  main.swift
//  ProblemSolving_10988
//
//  Created by YOUJIM on 2023/04/21.
//

import Foundation

var isPalindrome = 1
let word = readLine()!.unicodeScalars.map(String.init)

let reverseWord = word.reversed()

if word == [String](reverseWord) {
    print("1")
}
else {
    print("0")
}

//let mid = (word.endIndex - 1) / 2
//
//for i in 1 ... mid {
//    if mid % 2 != 0 { //짝
//        if word[mid - i + 1] != word[mid + i] {
//            isPalindrome = 0
//        }
//    }
//    else {
//        if word[mid - i] != word[mid + i] {
//            isPalindrome = 0
//        }
//    }
//}

