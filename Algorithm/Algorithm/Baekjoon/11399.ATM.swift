import Foundation

class ATM {
    func solution() -> Int {
        let n = Int(readLine()!)!
        let inputs = readLine()!.split(separator: " ").map({ Int($0)!}).sorted()
        var result = 0
        for i in 0..<n {
            for j in 0...i {
                result += inputs[j]
            }
        }
        return result
    }

}
