//
//  main.swift
//  ProblemSolving_1735
//
//  Created by YOUJIM on 2023/06/07.
//

//import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    else { return gcd(b, a % b)}
}

var fraction1 = readLine()!.split(separator: " ").map { Int($0)! }
var fraction2 = readLine()!.split(separator: " ").map { Int($0)! }

var denominator = fraction1[1] * fraction2[1]
var molecule = fraction1[0] * fraction2[1] + fraction2[0] * fraction1[1]
var gcdOfFraction = gcd(denominator, molecule)

print("\(molecule / gcdOfFraction) \(denominator / gcdOfFraction)")
