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

//  使用临时变量
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

//  使用加减
if x > y {
    x = x + y
    y = x - y
    x = x - y
}

if x > z {
    x = x + z
    z = x - z
    x = x - z
}

if y > z {
    y = y + z
    z = y - z
    y = y - z
}

print("small to big: \(x) \(y) \(z)")

//  使用位运算
if x > y {
    x = x ^ y
    y = x ^ y
    x = x ^ y
}

if x > z {
    x = x ^ z
    z = x ^ z
    x = x ^ z
}

if y > z {
    y = y ^ z
    z = y ^ z
    y = y ^ z
}

print("small to big: \(x) \(y) \(z)")
/*
 今天在看C语言的位运算时，看到了如下交换a，b两值的方法：
 a = a^b;
 b = a^b;
 a = a^b;
 后来想想，真是太神奇了！其实，我们首先知道，对于任意的x满足：
 x^x == 0;
 x^0 == x;
 那么上面的式子事实上是利用了如上的规则，首先用a保存了a^b的 值，再用b = a ^ b = (a^b)^b=a^b^b=a^(b^b)=a^0=a，这样就成功的实现了b = a；接着又用a = a^b = (a^b)^b（第一个b还是原来的b，而第二个b已经是a的值，因为前面已经实现了交换）= (a^b)^a = a^a^b = 0^b = b，这样就实现了a = b；于是，就成功的实现了a，b两个值的交换。
 */
//  使用 swap 函数
if x > y {
    swap(&x, &y)
}

if x > z {
    swap(&x, &z)
}

if y > z {
    swap(&y, &z)
}

print("small to big: \(x) \(y) \(z)")

//  使用元组
if x > y {
    (x, y) = (y, x)
}

if x > z {
    (x, z) = (z, x)
}

if y > z {
    (y, z) = (z , y)
}

print("small to big: \(x) \(y) \(z)")
