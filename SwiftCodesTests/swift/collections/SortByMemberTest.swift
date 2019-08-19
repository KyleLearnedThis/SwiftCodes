//
//  SortByMemberTest.swift
//  SwiftCodesTests
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import XCTest

class SortByMemberTest: XCTestCase {

    func testSortPair() {
        var n = [Pair]()
        n.append(Pair(4, "USA"))
        n.append(Pair(3, "Japan"))
        n.append(Pair(2, "Canada"))
        n.append(Pair(1, "Earth"))
        _ = SortByMember.sortPair(n)
    }

    func testSortTuple() {
        var n = [(Int, String)]()
        n.append((4, "USA"))
        n.append((3, "Japan"))
        n.append((2, "Canada"))
        n.append((1, "Earth"))
        _ = SortByMember.sortTuple(n)
    }

}
