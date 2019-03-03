import Foundation
import SwiftDS

class FizzBuzz {
    func doFizzBuzz(number: Int) -> Array<String> {
        var result : Array<String> = Array<String>()

        for i in 1 ... number {
            if (i % 15  == 0) {
                result.append("Fizz Buzz")
            } else if (i % 3 == 0) {
                result.append("Fizz")
            } else if (i % 5 == 0) {
                result.append("Buzz")
            } else {
                result.append("\(i)")
            }
        }
        return result
    }
}
