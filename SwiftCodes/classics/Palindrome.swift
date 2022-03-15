//
//  Palindrome.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 3/15/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//  https://leetcode.com/problems/valid-palindrome/

import Foundation

class Palindrome {
    static func isPalindrome(_ s: String) -> Bool {
        let pattern = "[^A-Za-z0-9]+"
        let input = s.replacingOccurrences(of: pattern, with: "", options: [.regularExpression])
            .lowercased()
        let revsersed = String(input.reversed())
        return revsersed == input
    }
}
