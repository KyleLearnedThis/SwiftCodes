//
//  ValidParenthesesTest.swift
//  SwiftCodesTests
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import XCTest

class ValidParenthesesTest: XCTestCase {

    func testBasic() {
        let expected = true
        let actual = ValidParentheses.isValid("(())")
        XCTAssertEqual(expected, actual)
    }

}
