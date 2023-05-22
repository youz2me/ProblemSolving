//
//  main.swift
//  ProblemSolving_14613
//
//  Created by YOUJIM on 2023/05/22.
//

import Foundation

func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 { return 1 }
    return n * factorial( n - 1)
}

var input = readLine()!.components(separatedBy: " ").map { Double($0)! }

var proOfBronze = 0.00
var proOfSilver = 0.00
var proOfGold = 0.00
var proOfPlatinum = 0.00
var proOfDiamond = 0.00

for win in 0...20 {
    for lose in 0...(20 - win) {
        let drew = 20 - win - lose
        if (win + lose + drew) == 20 {
            let prov = factorial(20) / (factorial(win) * factorial(lose) * factorial(drew))
            if (2000 + win * 50 - lose * 50 >= 1000) && (2000 + win * 50 - lose * 50 < 1500) {
                proOfBronze += Double(prov) * pow(input[0], Double(win)) * pow(input[1], Double(lose)) * pow(input[2], Double(drew))
            }
            else if (2000 + win * 50 - lose * 50 >= 1500) && (2000 + win * 50 - lose * 50 < 2000) {
                proOfSilver += Double(prov) * pow(input[0], Double(win)) * pow(input[1], Double(lose)) * pow(input[2], Double(drew))
            }
            else if (2000 + win * 50 - lose * 50 >= 2000) && (2000 + win * 50 - lose * 50 < 2500) {
                proOfGold += Double(prov) * pow(input[0], Double(win)) * pow(input[1], Double(lose)) * pow(input[2], Double(drew))
            }
            else if (2000 + win * 50 - lose * 50 >= 2500) && (2000 + win * 50 - lose * 50 < 3000) {
                proOfPlatinum += Double(prov) * pow(input[0], Double(win)) * pow(input[1], Double(lose)) * pow(input[2], Double(drew))
            }
            else if (2000 + win * 50 - lose * 50 >= 3000) && (2000 + win * 50 - lose * 50 < 3500) {
                proOfDiamond += Double(prov) * pow(input[0], Double(win)) * pow(input[1], Double(lose)) * pow(input[2], Double(drew))
            }
        }
    }
}

print(String(format: "%0.8f", round(proOfBronze * pow(10, 8)) / pow(10, 8)))
print(String(format: "%0.8f", round(proOfSilver * pow(10, 8)) / pow(10, 8)))
print(String(format: "%0.8f", round(proOfGold * pow(10, 8)) / pow(10, 8)))
print(String(format: "%0.8f", round(proOfPlatinum * pow(10, 8)) / pow(10, 8)))
print(String(format: "%0.8f", round(proOfDiamond * pow(10, 8)) / pow(10, 8)))
