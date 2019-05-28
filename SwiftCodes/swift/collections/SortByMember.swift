//
//  SortByMember.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation

class SortByMember {
    open class Pair {
        var key: Int
        var value: String
        init(_ k: Int,_ v: String) {
            key = k
            value = v
        }
    }

    func example() {
        var n = [Pair]()
        n.append(Pair(4, "USA"))
        n.append(Pair(3, "Japan"))
        n.append(Pair(2, "Canada"))
        n.append(Pair(1, "Earth"))
        let x = n.sorted(by: { $0.key < $1.key })

        for v in x.indices {
            let key = x[v].key
            let value = x[v].value
            print("key: \(key) value: \(value)")
        }
    }
}
