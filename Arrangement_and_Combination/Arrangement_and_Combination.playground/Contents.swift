import UIKit

func factorial(of num: UInt) -> UInt {
    return num > 0 ? (1 ... num).reduce(1, { $0 * $1 }) : 1
}
