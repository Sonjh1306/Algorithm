import Foundation

class Invitation {
    func solution() -> Int {
        let count = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)
        var result: [Int] = []
        
        for index in 0..<count {
            result.append(input[index] + (index + 1))
        }
        return result.max()! + 1
    }
}
