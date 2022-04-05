//
//  SmallerThanCurrentNumber.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 4/5/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//  https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

import Foundation

class SmallerThanCurrentNumber {
    static func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for i in nums.indices {
            let value = nums[i]
            var cur = nums.map{ $0 }
            cur.remove(at: i)
            let count = cur.filter{$0 < value}
                .count
            result.append(count)
        }
        return result
    }
}
