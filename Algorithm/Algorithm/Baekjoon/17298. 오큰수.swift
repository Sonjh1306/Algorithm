import Foundation

class RightBigNumber {
    func solution() {
        let count = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ")
        var queue: [Int] = []
        var result = ""

        for i in 0..<count {
            for j in i + 1..<count {
                if Int(numbers[i])! < Int(numbers[j])! {
                    queue.append(Int(numbers[j])!)
                }
            }
            if queue.isEmpty {
                result += "-1 "
            } else {
                result += "\(queue.first!) "
                queue.removeAll()
            }
        }
        print(result)
    }
}
