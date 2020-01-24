//
//  RxSwiftExamplesTest.swift
//  SwiftCodesTests
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import XCTest

class RxSwiftExamplesTest: XCTestCase {

    func testBasicArray001() {
        let array = [1,10,100,1000,10000]
        RxSwiftExamples.basicArray001(array)
    }
    
    func testFlatmap001() {
        let inputString = "1/10/100/Alpha"
        RxSwiftExamples.flatmap001(inputString)
    }
    
    func testFlatmap002() {
        RxSwiftExamples.flatmap002()
    }

    func testFilter001() {
        let array = ["1", "2", "3", "4", "5"]
        RxSwiftExamples.filter001(array)
    }
    
    func testFilter002() {
        let array = ["11", "A", "12", "B", "13", "C", "14"]
        RxSwiftExamples.filter002(array)
    }
    
    func testZip001() {
        let keys = ["YVR", "CDG", "SFO", "JFK"]
        let values = ["Vancouver", "Paris", "San Francisco", "New York City"]
        RxSwiftExamples.zip001(keys, values)
    }
    
    func testReduce001() {
        let array = [1,2,3,4,5]
        RxSwiftExamples.reduce001(array)
    }

}
