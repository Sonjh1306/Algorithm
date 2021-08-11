import Foundation

// Runtime: 4 ms, faster than 86.79% of Swift, Memory Usage: 14 MB, less than 75.47% of Swift
class NumberOfGoodPairs {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        
        // 이중 루프로 바깥 루프보다 안쪽 루프는 시작 index를 바깥 루프 다음 index부터 탐색해서 동일하면 count를 1 증가
        for i in 0..<nums.count {
            let num = nums[i]
            for j in i + 1..<nums.count {
                if num == nums[j] {
                    count += 1
                }
            }
        }
        // 최종적으로 다 돌고 나면 count를 반환
        return count
    }
}
