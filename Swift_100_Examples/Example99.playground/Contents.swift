//: Example 99
//:
//: 题目：辗转相除法
//:
//: 1.程序分析：
//:
//: 2.程序源代码：

import UIKit

//  循环
func gcd(a a: Int, b: Int) -> Int {
    var x = a, y = b
    var n = x % y
    while n != 0 {
        x = y
        y = n
        n = x % y
    }
    return y
}

gcd(a: 75, b: 100)


//  递归
func gcdRecursive(a a: Int, b: Int) -> Int {
    return b == 0 ? a : gcdRecursive(a: b, b: a % b)
}

gcdRecursive(a: 75, b: 100)
