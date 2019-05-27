//
//  StringPractices.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation

class StringPractices {
    static func reverse01(_ input: String) -> String {
        var result = ""
        let n = Array(input)
        for i in (0...(n.count - 1)).reversed() {
            let ch = n[i]
            print("\(ch)", terminator: " ")
            result.append(ch)
        }
        return result
    }

    func reverse02(_ s: inout [Character]) {
        var i = 0
        var j = s.count - 1

        while (j > i) {
            s.swapAt(i, j)
            i = i + 1
            j = j - 1
        }
    }

    static func toLowerCase(_ str: String) -> String {
        var result = ""
        for i in str.indices {
            let ch = str[i]
            result.append(ch.lowercased())
        }
        return result
    }

    static func removeOutermostParentheses(_ S: String) -> String {
        let x = S.firstIndex(of: "(")!
        let start = S.index(x, offsetBy: 1)
        let end = S.lastIndex(of: ")")!
        let sub = S[start..<end]
        let result = String(sub)
        return result
    }
}
