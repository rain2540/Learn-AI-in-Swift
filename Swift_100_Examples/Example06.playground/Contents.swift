//: Example 06
//:
//: 题目：古典问题：有一对兔子，从出生后第3个月起每个月都生一对兔子，小兔子长到第三个月后每个月又生一对兔子，假如兔子都不死，问每个月的兔子总数为多少？
//:
//: 1.程序分析：兔子的规律为数列1,1,2,3,5,8,13,21....
//:
//: 2.程序源代码

import UIKit

//  extension to Int
extension Int {
    /// 格式化输出
    public func format(_ f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

var f1 = 1, f2 = 1
for i in 1 ... 20 {
    print(f1.format("12"), " ", f2.format("12"), terminator:" ")
    if i % 2 == 0 {
        print("\n")
    }
    f1 = f1 + f2
    f2 = f1 + f2
}
