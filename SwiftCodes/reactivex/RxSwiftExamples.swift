//
//  RxSwiftExamples.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation
import RxSwift

class RxSwiftExamples {
    static var bag = DisposeBag()
    static func flatmap001() {
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
    
    static func filter001() {
        let source = Observable.of("1", "2", "3", "4", "5")
        source.map { return Int($0)!}
            .filter{ it in it >= 3 }
            .subscribe(onNext: { it in print("===== \(it) =====")})
            .disposed(by: bag)
    }
    
    static func zip001() {
        let src1 = Observable.of("YVR", "CDG", "SFO", "JFK")
        let src2 = Observable.of("Vancouver", "Paris", "San Francisco", "New York City")
        Observable.zip(src1, src2, resultSelector: {(l,r)  in return (l,r)})
            .subscribe(onNext: {it in print(" ===[\(it.0)]-[\(it.1)]===") })
            .disposed(by: bag)
    }
}

