//
//  SimpleLinkListTest.swift
//  SwiftCodesTests
//
//  Created by KyleLearnedThis on 3/17/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//

import XCTest

class SimpleLinkedListTest: XCTestCase {
    func testBasic() throws {
        let input = [1,2,3,4,5]
        let list = SimpleLinkedList()
        input.forEach {
            list.append($0)
        }
        list.printList()
    }

}
