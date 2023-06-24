//
//  main.swift
//  ProblemSolving_7568
//
//  Created by YOUJIM on 2023/06/24.
//

var infos = [[Int]]()

for _ in 0 ..< Int(readLine()!)! { infos.append(readLine()!.split(separator: " ").map { Int ($0)! }) }

for i in 0..<infos.count {
    var count = 1
    
    for otherInfo in infos {
        if infos[i] != otherInfo {
            if infos[i][0] >= otherInfo[0] || infos[i][1] >= otherInfo[1] {}
            else { count += 1 }
        }
    }
    
    print(count, terminator: " ")
}
