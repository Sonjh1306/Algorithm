import Foundation

// 내가 푼 코드(시간 초과)
class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var count = 0
        var result: [Int] = []
        
        for i in 0..<height.count {
            count = 0
            for j in i + 1..<height.count {
                count += 1
                if height[i] >= height[j] {
                    result.append(height[j] * count)
                } else {
                    result.append(height[i] * count)
                }
            }
        }
        return result.max()!
    }
}
// 다른 사람 코드(Success Case)
//class ContainerWithMostWater {
//    func maxArea(_ height: [Int]) -> Int {
//        var maxArea = 0
//        var i = 0
//        var j = height.count - 1
//
//        while i < j {
//            let width = j - i
//            let area = width * min(height[j], height[i])
//            maxArea = max(maxArea, area)
//            if height[j] > height[i] {
//                i += 1
//            } else {
//                j -= 1
//            }
//        }
//        return maxArea
//    }
//}
