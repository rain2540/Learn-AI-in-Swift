import UIKit

enum ACError: Error {
    case FactorialOfNegativeNumbers
}

func factorial(of num: Int) -> Int {
    return num > 0 ? (1 ... num).reduce(1, { $0 * $1 }) : 1
}
