//
//  ArrayLuckyNumber.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 3/24/21.
//  Copyright © 2021 kylelearnedthis. All rights reserved.
//  https://leetcode.com/problems/find-lucky-integer-in-an-array/

import Foundation

class ArrayLuckyNumber {
    static func findLucky(_ arr: [Int]) -> Int {
        let dict = makeFrequencyDictionary(arr)
        let list = dict.sorted { $0.0 > $1.0 }
        for item in list {
            if item.key == item.value {
                return item.key
            }
        }
        return -1
    }

    static func makeFrequencyDictionary(_ arr: [Int]) -> [Int:Int] {
        var dict = Dictionary<Int,Int>()
        for num in arr {
            var freq = 0
            if let value = dict[num] {
                freq = value + 1
                dict[num] = freq
            } else {
                dict[num] = 1
            }
        }
        return dict
    }
}
