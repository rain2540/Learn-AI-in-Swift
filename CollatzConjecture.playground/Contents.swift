import UIKit

/*:
 考拉兹猜想：一个正整数，如果它是奇数，则对它乘3再加1，如果它是偶数，则对它除以2，如此循环，最终都能够得到1
 */

typealias CollatzInfo = (number: Int, step: Int, path: [Int])

func collatzConjecture(_ number: Int) -> CollatzInfo {
    guard number > 0 else {
        return (number, 0, [])
    }

    var step = 0
    var pathNumbers: [Int] = [number]
    var tempNumber = number

    while tempNumber != 1 {
        if tempNumber % 2 == 0 {
            tempNumber /= 2
            pathNumbers.append(tempNumber)
        } else {
            tempNumber = tempNumber * 3 + 1
            pathNumbers.append(tempNumber)
        }
        step += 1
    }

    let info = (number, step, pathNumbers)
    return info
}

print(collatzConjecture(0))

for i in 1 ..< 27 {
    let info = collatzConjecture(i)
    print(info)
}

let info = collatzConjecture(27)
print(info)

for j in 28 ..< 101 {
    let info = collatzConjecture(j)
    print(info)
}
