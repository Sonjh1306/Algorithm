import Foundation

class BuildArrayFromPermutation {
    func buildArray(_ nums: [Int]) -> [Int] {
        var resultArray = [Int]()
        for (index,value) in nums.enumerated() {
            let value = nums[value]
            resultArray.append(value)
        }
        return resultArray
    }
}
