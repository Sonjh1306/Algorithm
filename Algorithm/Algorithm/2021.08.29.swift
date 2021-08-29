import Foundation

class ConcatenationOfArray {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for i in 0..<nums.count * 2 {
            if i > nums.count - 1 {
                result.append(nums[i % nums.count])
            } else {
                result.append(nums[i])
            }
        }
        return result
    }
}
