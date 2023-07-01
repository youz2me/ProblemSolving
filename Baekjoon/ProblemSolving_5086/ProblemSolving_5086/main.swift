//
//  main.swift
//  ProblemSolving_5086
//
//  Created by YOUJIM on 2023/05/01.
//

import Foundation

while 1 != 0 {
    var input = readLine()!.components(separatedBy: " ").map {Int($0)!}
    
    if input[0] == 0 && input[1] == 0 {
        break
    }
    
    if input[1] % input[0] == 0 {
        print("factor")
    }
    else {
        if input[0] % input[1]  == 0 {
            print("multiple")
        }
        else {
            print("neither")
        }
    }
}


