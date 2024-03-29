//
//  main.swift
//  ProblemSolving_11728
//
//  Created by YOUJIM on 10/29/23.
//

import Foundation

class FileIO {
    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
    
    @inline(__always) private func readByte() -> UInt8 {
        defer { byteIdx += 1 }
        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
    }
    
    @inline(__always) func readInt() -> Int {
        var number = 0, byte = readByte(), isNegative = false
        while byte == 10 || byte == 32 { byte = readByte() }
        if byte == 45 { byte = readByte(); isNegative = true }
        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
        return number * (isNegative ? -1 : 1)
    }
    
    @inline(__always) private func write(_ output: String) {
        FileHandle.standardOutput.write(output.data(using: .utf8)!)
    }
}

let file = FileIO()

var n = file.readInt()
var m = file.readInt()
var s = n + m
var arr = [Int]()
var str = ""

for _ in 1 ... s { arr.append(file.readInt()) }

arr.sort()

for i in 0 ..< s { str.write(String(arr[i]) + " ") }

print(str)
