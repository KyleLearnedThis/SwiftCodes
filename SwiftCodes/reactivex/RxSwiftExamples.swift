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
    
    static func basicArray001(_ array: [Int]) {
        let source = Observable.from(array)
        source.subscribe(onNext: { it in print("===== \(it) =====") })
            .disposed(by: bag)
    }
    
    static func flatmap001(_ inputString: String) {
        let source = Observable.just(inputString)
        source.flatMap({
            Observable.from(
                $0.split(separator: "/").map {
                    return String($0)
            })
        }).filter({ Int($0) != nil })
            .subscribe(onNext: { it in print("===== \(it) =====") })
            .disposed(by: bag)
    }
    
    static func flatmap002() {
        let inputString = ["1/10/100/Alpha", "2/20/Beta", "3/30/Gamma"]
        let source = Observable.from(inputString)
        source.flatMap({
            Observable.from(
                $0.split(separator: "/").map {
                    return String($0)
            })
        }).filter({ Int($0) != nil })
            .subscribe(onNext: { it in print("===== \(it) =====") })
            .disposed(by: bag)
    }
    
    static func filter001(_ array: [String]) {
        let source = Observable.from(array)
        source.map { return Int($0)! }
            .filter { it in it >= 3 }
            .subscribe(onNext: { it in print("===== \(it) =====") })
            .disposed(by: bag)
    }
    
    static func filter002(_ array: [String]) {
        let source = Observable.from(array)
        source.filter({ Int($0) != nil })
            .map({ it in return Int(it)! * Int(it)! })
            .subscribe(onNext: { it in print("===== \(it) =====") })
            .disposed(by: bag)
    }
    
    static func zip001(_ keys: [String], _ values: [String]) {
        let src1 = Observable.from(keys)
        let src2 = Observable.from(values)
        Observable.zip(src1, src2, resultSelector: {(l,r)  in return (l,r) })
            .subscribe(onNext: { it in print("===== [\(it.0)]-[\(it.1)] =====") })
            .disposed(by: bag)
    }
    
    static func reduce001(_ array: [Int]) {
        let adder: (Int, Int) -> Int = {x,y in x + y}
        Observable.from(array)
            .reduce(0, accumulator: adder)
            .subscribe(onNext: { it in print("===== [\(it)] =====") })
            .disposed(by: bag)
    }
}
