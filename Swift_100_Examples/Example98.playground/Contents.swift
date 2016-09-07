//: Example 98
//:
//: 题目：斐波那契数列
//:
//: 1.程序分析：
//:
//: 2.程序源代码：

import UIKit

//  递归
func fibonacci(_ index: Int) -> Int {
    return (index > 2) ? fibonacci(index - 1) + fibonacci(index - 2) : 1
}

//  循环
func fibonacciLoop(_ index: Int) -> Int {
    var a = [1, 1, 0]
    if index == 1 || index == 2 {
        a[2] = 1
    } else {
        for _ in 2 ..< index {
            a[2] = a[1] + a[0]
            a[0] = a[1]
            a[1] = a[2]
        }
    }
    return a[2]
}

fibonacciLoop(6)
fibonacci(6)
