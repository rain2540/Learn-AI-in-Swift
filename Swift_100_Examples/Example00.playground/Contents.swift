//: Example 00
//:
//: 题目：有1、2、3、4个数字，能组成多少个互不相同且无重复数字的三位数？都是多少？
//:
//: 1.程序分析：可填在百位、十位、个位的数字都是1、2、3、4。组成所有的排列后再去掉不满足条件的排列。
//:
//: 2.程序源代码：

import Foundation

print("for loop: ")
for i in 1 ..< 5 {
    for j in 1 ..< 5 {
        for k in 1 ..< 5 {
            if (i != j) && (i != k) && (j != k) {   //  确保i, j, k互不相同
                print("\(i)\(j)\(k)")
            }
        }
    }
}

print("")

print("function forEach: ")
let nums = [1, 2, 3, 4]
nums.forEach { (i) in
    nums.forEach({ (j) in
        nums.forEach({ (k) in
            if (i != j) && (i != k) && (j != k) {   //  确保i, j, k互不相同
                print("\(i)\(j)\(k)")
            }
        })
    })
}
