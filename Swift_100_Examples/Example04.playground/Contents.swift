//: Example 04
//:
//: 题目：输入三个整数x,y,z，请把这三个数由小到大输出。
//:
//: 1.程序分析：我们想办法把最小的数放到x上，先将x与y进行比较，如果x>y则将x与y的值进行交换，然后再用x与z进行比较，如果x>z则将x与z的值进行交换，这样能使x最小。
//:
//: 2.程序源代码：

import Foundation

var x, y, z, t: Int
x = 20
y = 18
z = 9
if x > y {  /*交换x,y的值*/
    t = x
    x = y
    y = t
}

if x > z {  /*交换x,z的值*/
    t = z
    z = x
    x = t
}

if y > z {  /*交换z,y的值*/
    t = y
    y = z
    z = t
}

print("small to big: \(x) \(y) \(z)")
