import Foundation

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var addNums = nums
        let numsCount = nums.count
        
        for i in 0..<numsCount {
            if nums[i] == target {
                return i
            }
        }
        addNums.append(target)
        addNums.sort()
        for i in 0..<addNums.count {
            if addNums[i] == target {
                return i
            }
        }
        return 0
    }
}

class SquaresOfASortedArray {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for num in nums {
            result.append(num * num)
        }
        result.sort()
        return result
    }
}

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        var result: [Int] = []
        for i in 0..<count {
            if nums[i] != 0 {
                result.append(nums[i])
            }
        }
        for _ in 0..<nums.count - result.count {
            result.append(0)
        }
        nums = result
    }
}

class TwoSumII {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var low = 0
        var high = numbers.count - 1
        while low < high {
            let sum = numbers[low] + numbers[high]
            if sum == target {
                return [low + 1, high + 1]
            } else if sum < target {
                low += 1
            } else {
                high -= 1
            }
        }
        return []
    }
}

class ReverseString {
    func reverseString(_ s: inout [Character]) {
        return s.reverse()
    }
}

class ReverseWordsInAStringIII {
    func reverseWords(_ s: String) -> String {
        
        let stringArray = s.components(separatedBy: " ")
        var result: [String] = []
        for string in stringArray {
            var mapping = string.map { $0 }
            var makeString = ""
            mapping.reverse()
            for i in 0..<mapping.count {
                makeString += String(mapping[i])
            }
            result.append(makeString)
        }
        return result.joined(separator: " ")
    }
}
