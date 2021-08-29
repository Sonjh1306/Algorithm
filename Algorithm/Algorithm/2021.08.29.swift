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

class ArrayFromPermutation {
    func buildArray(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for i in 0..<nums.count {
            result.append(nums[nums[i]])
        }
        
        return result
    }
}

class ShuffleTheArray {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result: [Int] = []
        
        for i in 0..<n {
            result.append(nums[i])
            result.append(nums[i + n])
        }
        return result
    }
}