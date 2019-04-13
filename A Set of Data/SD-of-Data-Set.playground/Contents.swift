import Foundation

// 和
func sum(of nums: [Double]) -> Double {
    return nums.reduce(0, { x, y in
        x + y
    })
}

func sum(of input: Double...) -> Double {
    return input.reduce(0.0, +)
}


// 平均值
func average(of nums: [Double]) -> Double {
    return sum(of: a) / Double(nums.count)
}


// 极差
//: 极差 = (一组数据中的) 最大值 - 最小值
func range(of nums: [Double]) -> Double {
    guard let max = nums.max(), let min = nums.min() else { return 0.0 }
    return max - min
}


// 方差
//: 每个数据的值与全体数据的值的平均数之差的平方值的平均数。
func variance(of nums: [Double]) -> Double {
    let numAverage = average(of: nums)
    var sum = 0.0
    for num in nums {
        let sub = num - numAverage
        let power = pow(sub, 2.0)
        sum += power
    }
    return sum / Double(nums.count)
}


// 标准差
//: 方差的平方根
func standardDeviation(of nums: [Double]) -> Double {
    return sqrt(variance(of: nums))
}


// 样本方差
//: 每个样本值与全体样本值的平均数之差的平方值的平均数。
func sampleVariance(of nums: [Double]) -> Double {
    let numAverage = average(of: nums)
    var sum = 0.0
    for num in nums {
        let sub = num - numAverage
        let power = pow(sub, 2.0)
        sum += power
    }
    return sum / Double(nums.count - 1)
}


// 样本标准差
func sampleStandardDeviation(of nums: [Double]) -> Double {
    return sqrt(sampleVariance(of: nums))
}

// 标准分
func standardScores(of scores: [Double]) -> [Double] {
    return scores.map{ ($0 - average(of: scores)) / standardDeviation(of: scores) }
}


let a: [Double] = [70, 90, 60, 60]//[1, 2, 3, 4, 5]
print("sum: ", sum(of: a))
print("average: ", average(of: a))
print("range: ", range(of: a))
print("variance: ", variance(of: a))
print("Standard Deviation: ", standardDeviation(of: a))
print("Sample Variance: ", sampleVariance(of: a))
print("Sample Standard Deviation: ", sampleStandardDeviation(of: a))
