import Foundation

class Truck {
    func solution(_ numbers:[Int]) -> String {
        
        var result: [Int] = []
        let sortedNumbers = numbers.sorted()
        for i in 0..<numbers.count {
            var new = String(sortedNumbers[i])
            for j in 0..<numbers.count {
                if i != j {
                    new += String(sortedNumbers[j])
                }
            }
            result.append(Int(new)!)
        }
        let max = result.max()!
        return String(max)
    }
}
