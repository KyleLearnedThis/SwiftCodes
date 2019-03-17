//
//  AllPathTest.swift
//  SwiftCodesTests
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import XCTest
import SwiftDS

class AllPathsTest: XCTestCase {

    func testAllPathsBasic() {
        let input = [15, 6, 18, 3, 7, 17, 20, 2, 4, 13, 9]
        let bst = BinarySearchTree<Int>(input: input)
        BinaryTreePrinter.printNode(root: bst.getRoot()!)
        let allPaths = AllPaths()
        let result = allPaths.binaryTreePaths(root: bst.getRoot())
    }

}
