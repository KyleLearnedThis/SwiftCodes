//
//  RxSwiftExamples.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation
import RxSwift

class RxSwiftExamples {
    static func example001() {
        let bag = DisposeBag()
        let source = Observable.just("1/10/100/Alpha")
        source.flatMap({
            Observable.of(
                $0.split(separator: "/").map {
                    return String($0)
                })
        })
            .subscribe(onNext: { it in print("===== \(it) =====")})
            .disposed(by: bag)
    }
}

