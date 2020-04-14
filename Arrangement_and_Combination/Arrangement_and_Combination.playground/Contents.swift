import UIKit

/// 阶乘、排列组合错误类型
///
/// - factorialOfNegativeNumbers: 负数的阶乘
/// - arrangementParameterNonCompliance: 排列参数不符合规范
/// - combinationParameterNonCompliance: 组合参数不符合规范
enum ACError: Error {
    /// 负数的阶乘
    case factorialOfNegativeNumbers
    /// 排列参数不符合规范
    case arrangementParameterNonCompliance
    /// 组合参数不符合规范
    case combinationParameterNonCompliance
}

/// 阶乘
/// - Parameter num: 需要计算阶乘的非负整数
/// - Throws: 计算中的异常情况
/// - Returns: 阶乘计算结果
func factorial(of num: Int) throws -> Int {
    guard num >= 0 else {
        throw ACError.factorialOfNegativeNumbers
    }
    return num > 0 ? (1 ... num).reduce(1, { $0 * $1 }) : 1
}

/// 排列
/// - Parameters:
///   - n: 元素总数
///   - m: 取出元素个数
/// - Throws: 计算中的异常情况
/// - Returns: 排列计算结果
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


//: Examples
let n = 4, m = 2

//: Factorial
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
