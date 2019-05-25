//
//  TopKElements.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation

class TopKElements {
    func topKFrequent(_ input: [Int], k: Int) -> Int {
        var map = Dictionary<Int, Int>()
        for i in input {
            if let value = map[i] {
                map[i] = value + 1
            } else {
                map[i] = 1
            }
        }
        let sortedMap = map.sorted { $0.1 > $1.1 }

        var n = 0
        for (_, value) in sortedMap {
            if n == k - 1 {
                return value
            } else {
                n = n + 1
            }
        }
        return -1
    }
}
