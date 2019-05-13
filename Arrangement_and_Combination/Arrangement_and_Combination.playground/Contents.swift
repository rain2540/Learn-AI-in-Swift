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

let num = 3

do {
    let res = try factorial(of: num)
    print("factorial of \(num) is", res)
} catch {
    print(error)
}
