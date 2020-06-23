//
//  ComputeClosureTest.swift
//  SwiftCodesTests
//
//  Created by KyleLearnedThis on 6/23/20.
//  Copyright © 2020 kylelearnedthis. All rights reserved.
//

import XCTest

class ComputeClosureTest: XCTestCase {

    func testAdd() throws {
        let cc = ComputeClosure()
        cc.addOne(input: 1) { x in
            print("Step 1: input is \(x)")
            return x
        }
        print("===== \(cc.result) =====")
        XCTAssertEqual(cc.result, 2)
    }

}
