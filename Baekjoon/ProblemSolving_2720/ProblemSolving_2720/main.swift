//
//  main.swift
//  ProblemSolving_2720
//
//  Created by YOUJIM on 2023/04/29.
//

import Foundation

struct Money {
    var quarter : Int
    var dime : Int
    var nickel : Int
    var penny : Int
}

let numOfCase = Int(readLine()!)!
var remainMoney = [Int]()
var caseOf = [Money](repeating: Money(quarter: 0, dime: 0, nickel: 0, penny: 0), count: numOfCase)

for _ in 0 ..< numOfCase {
    remainMoney.append(Int(readLine()!)!)
}

for i in 0 ..< numOfCase {
    caseOf[i].quarter = remainMoney[i] / 25
    caseOf[i].dime = (remainMoney[i] - caseOf[i].quarter * 25) / 10
    caseOf[i].nickel = (remainMoney[i] - caseOf[i].quarter * 25 - caseOf[i].dime * 10) / 5
    caseOf[i].penny = (remainMoney[i] - caseOf[i].quarter * 25 - caseOf[i].dime * 10 - caseOf[i].nickel * 5) / 1
    
    print("\(caseOf[i].quarter) \(caseOf[i].dime) \(caseOf[i].nickel) \(caseOf[i].penny)")
}


