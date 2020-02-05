//
//  HttpJsonExampleTest.swift
//  SwiftCodesTests
//
//  Copyright © 2020 kylelearnedthis. All rights reserved.
//

import XCTest

@available(OSX 10.15, *)
class HttpJsonExampleTest: XCTestCase {

    func testBasic() {
        let x = HttpJsonExample()
        x.getJson(urlString: "https://jsonplaceholder.typicode.com/posts")
    }

}
