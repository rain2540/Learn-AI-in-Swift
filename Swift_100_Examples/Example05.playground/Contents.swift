//: Example 05
//:
//: 题目：输出九九乘法表。
//:
//: 1.程序分析：分行与列考虑，共9行9列，i控制行，j控制列。
//:
//: 2.程序源代码：

import Foundation

//  extension to Int
extension Int {
    /// 格式化输出
    public func format(f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

for i in 1 ..< 10 {
    for j in 1 ... i {
        var result = i * j
        print("\(i) * \(j) = " + result.format("-2"), terminator: j == i ? "\n" : "  ")
    }
}
