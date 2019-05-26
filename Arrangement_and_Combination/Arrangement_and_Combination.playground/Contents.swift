import UIKit

enum ACError: Error {
    case factorialOfNegativeNumbers
    case arrangementParameterNonCompliance
    case combinationParameterNonCompliance
}


func factorial(of num: Int) throws -> Int {
    guard num >= 0 else {
        throw ACError.factorialOfNegativeNumbers
    }
    return num > 0 ? (1 ... num).reduce(1, { $0 * $1 }) : 1
}

func arrangement(n: Int, m: Int) throws -> Int {
    guard m <= n else {
        throw ACError.arrangementParameterNonCompliance
    }
    return try factorial(of: n) / factorial(of: n - m)
}

func combination(n: Int, m: Int) throws -> Int {
    guard m <= n else {
        throw ACError.combinationParameterNonCompliance
    }
    return try factorial(of: n) / (factorial(of: m) * factorial(of: n - m))
}


let n = 4, m = 2

do {
    let res = try factorial(of: n)
    print("factorial of \(n) is", res)
} catch {
    print(error)
}

do {
    let res = try arrangement(n: n, m: m)
    print("result of A(\(n), \(m)) is \(res)")
} catch {
    print(error)
}

do {
    let res = try combination(n: n, m: m)
    print("result of C(\(n), \(m)) is \(res)")
} catch {
    print(error)
}
