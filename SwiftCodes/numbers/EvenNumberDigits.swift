//
//  EvenNumberDigits.swift
//  SwiftCodes
//  https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
//  Copyright © 2020 kylelearnedthis. All rights reserved.
//

import Foundation

class EvenNumberDigits {
    static func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            let digits = Array(String(num)).count
            if digits % 2 == 0 {
                result = result + 1
            }
        }
        return result
    }
}
