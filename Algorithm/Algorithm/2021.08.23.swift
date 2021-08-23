import Foundation

class HeightChecker {
    func heightChecker(_ heights: [Int]) -> Int {
        let sortedHeights = heights.sorted()
        var count = 0
        
        for i in 0..<heights.count {
            if sortedHeights[i] != heights[i] {
                count += 1
            }
        }
        return count
    }
}
