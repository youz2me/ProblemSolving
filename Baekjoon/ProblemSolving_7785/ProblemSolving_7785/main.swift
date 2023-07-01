//
//  main.swift
//  ProblemSolving_7785
//
//  Created by YOUJIM on 2023/06/05.
//

import Foundation

var employees = Set<String>()

for _ in 0 ..< Int(readLine()!)! {
    var employee = readLine()!.split(separator: " ").map { String($0) }
    if employee[1] == "enter" && !employees.contains("\(employee[0])") { employees.insert(employee[0]) }
    else if employee[1] == "leave" && employees.contains("\(employee[0])") { employees.remove(employee[0])}
}

employees.sorted(by: >).forEach{print($0)}

