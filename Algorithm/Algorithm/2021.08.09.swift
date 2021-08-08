import Foundation

class MinimizeMaximumPairSumInArray {
    func minPairSum(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        let center = nums.count / 2
        let count = nums.count
        var result: [Int] = []
        for i in 0..<center {
            result.append(sortedNums[i] + sortedNums[count - 1 - i])
        }
        return result.max()!
    }
}
