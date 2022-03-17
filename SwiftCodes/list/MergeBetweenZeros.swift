//
//  MergeBetweenZeros.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 3/17/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//  https://leetcode.com/problems/merge-nodes-in-between-zeros/

import Foundation
import SwiftDS

class MergeBetweenZeros {
    static func mergeNodes(_ head: Node<Int>?) -> Node<Int>? {
        var cur = head
        if cur == nil {
            return nil
        }
        let resultList = LinkedList<Int>()
        var sum = 0
        while(cur != nil) {
            let data: Int = (cur?.getValue())!
            if data != 0 {
                sum += data
            } else {
                if cur !== head {
                    resultList.append(value: sum)
                    sum = 0
                }
            }
            cur = cur?.next
        }
        return resultList.getHead()
    }
}
