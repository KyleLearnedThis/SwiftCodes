//
//  SmallerThanCurrentNumberTest.swift
//  SwiftCodesTests
//
//  Created by KyleLearnedThis on 4/5/22.
//  Copyright © 2022 kylelearnedthis. All rights reserved.
//

import XCTest

class SmallerThanCurrentNumberTest: XCTestCase {

    func testBasicV01() throws {
        let input = [8,1,2,2,3]
        let expected = [4,0,1,1,3]
        let actual = SmallerThanCurrentNumber.smallerNumbersThanCurrent(input)
        XCTAssertEqual(expected, actual)
    }

    func testBasicV02() throws {
        let input = [7,7,7,7]
        let expected = [0,0,0,0]
        let actual = SmallerThanCurrentNumber.smallerNumbersThanCurrent(input)
        XCTAssertEqual(expected, actual)
    }
}
