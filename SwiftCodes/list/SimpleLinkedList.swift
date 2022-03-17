//
//  SimpleLinkList.swift
//  SwiftCodes
//
//  Created by KyleLearnedThis on 3/17/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//  For LeetCode

import Foundation

class ListNode {
    var next: ListNode? = nil
    var data: Int = 0
    init(_ data: Int) {
        self.data = data
    }
}

class SimpleLinkedList {
    var head: ListNode? = nil
    func append(_ value: Int) {
        var cur = head
        if cur == nil {
            head = ListNode(value)
        } else {
            while cur?.next != nil {
                cur = cur?.next
            }
            cur?.next = ListNode(value)
        }
    }

    public func printList() {
        var cur: ListNode? = head
        while(cur != nil) {
            let value = String(describing: (cur?.data)!)
            print("[\(value)]", terminator: " ")
            cur = cur!.next
        }
        print("")
    }
}
