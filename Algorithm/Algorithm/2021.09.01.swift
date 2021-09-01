import Foundation

class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for _ in 0..<k {
            let num = nums.removeLast()
            nums.insert(num, at: 0)
        }
    }
}

