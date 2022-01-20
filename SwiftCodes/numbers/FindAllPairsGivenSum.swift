//
//  FindAllPairsGivenSum.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 1/20/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//  https://practice.geeksforgeeks.org/problems/find-all-pairs-whose-sum-is-x5808/1

import Foundation

class FindAllPairsGivenSum {
    static func allPairs(_ a: [Int], _ b: [Int], _ n: Int) -> [(l: Int, r: Int)] {
        var result = [(l: Int, r: Int)]()
        for l in a {
            for r in b {
                if(n == l + r) {
                    let tuple = (l,r)
                    result.append(tuple)
                }
            }
        }
        return result
    }
}
