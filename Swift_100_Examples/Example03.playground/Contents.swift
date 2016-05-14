//: Example 03
//:
//: 题目：输入某年某月某日，判断这一天是这一年的第几天？
//:
//: 1.程序分析：以12月31日为例，应该先把前两个月的加起来，然后再加上5天即本年的第几天，特殊情况，闰年且输入月份大于3时需考虑多加一天。
//:
//: 2.程序源代码：

import Foundation

var day = 0, month = 0, year = 0, sum = 0, leap = 0
year = 2012
month = 12
day = 31

switch (month) {    /*先计算某月以前月份的总天数*/
case 1:  sum = 0
case 2:  sum = 31
case 3:  sum = 59
case 4:  sum = 90
case 5:  sum = 120
case 6:  sum = 151
case 7:  sum = 181
case 8:  sum = 212
case 9:  sum = 243
case 10: sum = 273
case 11: sum = 304
case 12: sum = 334
default: print("data error")
}
sum = sum + day  /*再加上某天的天数*/
if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {  /*判断是不是闰年*/
    leap = 1
} else {
    leap = 0
}
if leap == 1 && month > 2 { /*如果是闰年且月份大于2,总天数应该加一天*/
    sum += 1
}
print("It is the \(sum)th day.")
