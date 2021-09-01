import Foundation

class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for _ in 0..<k {
            let num = nums.removeLast()
            nums.insert(num, at: 0)
        }
    }
}


class BinarySearch {
    func search(_ nums: [Int], _ target: Int) -> Int {
        for i in 0..<nums.count {
            if nums[i] == target {
                return i
            }
        }
        return -1
    }
}
