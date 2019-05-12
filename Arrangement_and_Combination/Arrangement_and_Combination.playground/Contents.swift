import UIKit

enum ACError: Error {
    case factorialOfNegativeNumbers
}

func factorial(of num: Int) throws -> Int {
    guard num >= 0 else {
        throw ACError.factorialOfNegativeNumbers
    }
    return num > 0 ? (1 ... num).reduce(1, { $0 * $1 }) : 1
}
