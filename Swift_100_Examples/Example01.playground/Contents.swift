//: Example 01
//:
//: 题目：企业发放的奖金根据利润提成。
//:
//: 利润(I)低于或等于10万元时，奖金可提10%；
//: 利润高于10万元，低于20万元时，低于10万元的部分按10%提成，高于10万元的部分，可提成7.5%；
//: 20万到40万之间时，高于20万元的部分，可提成5%；
//: 40万到60万之间时高于40万元的部分，可提成3%；
//: 60万到100万之间时，高于60万元的部分，可提成1.5%，
//: 高于100万元时，超过100万元的部分按1%提成，从键盘输入当月利润I，求应发放奖金总数？
//:
//: 1.程序分析：请利用数轴来分界，定位。注意定义时需把奖金定义成长整型。
//:
//: 2.程序源代码：

import Foundation


var i = 1_0000
var bonus1, bonus2, bonus4, bonus6, bonus10, bonus: Int
bonus1 = Int(10_0000 * 0.1)
bonus2 = bonus1 + Int(10_0000 * 0.075)
bonus4 = bonus2 + Int(20_0000 * 0.05)
bonus6 = bonus4 + Int(20_0000 * 0.03)
bonus10 = bonus6 + Int(40_0000 * 0.015)
if i <= 10_0000 {
    bonus = Int(Double(i) * 0.1)
} else if i <= 20_0000 {
    bonus = bonus1 + Int(Double(i - 10_0000) * 0.075)
} else if i <= 40_0000 {
    bonus = bonus2 + Int(Double(i - 20_0000) * 0.05)
} else if i <= 60_0000 {
    bonus = bonus4 + Int(Double(i - 40_0000) * 0.03)
} else if i <= 100_0000 {
    bonus = bonus6 + Int(Double(i - 60_0000) * 0.015)
} else {
    bonus = bonus10 + Int(Double(i - 100_0000) * 0.01)
}
print("bonus = \(bonus)")

