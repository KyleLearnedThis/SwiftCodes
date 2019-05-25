//
//  ValidParentheses.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation

class ValidParentheses {
    static func isValid(_ input: String) -> Bool {
        var stack = [String]()
        for i in input.indices {
            let s = String(input[i])
            if s == "(" {
                stack.insert(s, at: 0)
            } else if s == ")" {
                if stack.count == 0 {
                    return false
                }
                stack.remove(at: 0)
            }
        }
        return stack.count == 0
    }
}
