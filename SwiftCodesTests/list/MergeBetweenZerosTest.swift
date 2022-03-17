//
//  MergeBetweenZerosTest.swift
//  SwiftCodesTests
//
//  Created by KyleLearnedThis on 3/17/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//

import XCTest
import SwiftDS

class MergeBetweenZerosTest: XCTestCase {

    func testBasic01() throws {
        let input = [0,3,1,0,4,5,2,0]
        let list = LinkedList(input: input)
        let head = list.getHead()
        let actual = MergeBetweenZeros.mergeNodes(head)
        printList(actual)
    }

    func testBasic02() throws {
        let input = [0,1,0,3,0,2,2,0]
        let list = LinkedList(input: input)
        let head = list.getHead()
        let actual = MergeBetweenZeros.mergeNodes(head)
        printList(actual)
    }

    private func printList(_ node: Node<Int>?) {
        var cur = node
        while cur != nil {
            let data = (cur?.getValue())!
            print("\(data)", terminator: " ")
            cur = cur?.next
        }
        print("")
    }
}
