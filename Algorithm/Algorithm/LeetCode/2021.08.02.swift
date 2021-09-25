import Foundation

class MakeBigNumber {
    func solution(_ number:String, _ k:Int) -> String {
        let numberArray = number.map { Int(String($0))! }
        var count = k
        var stack: [Int] = []
        var lastIndex = numberArray.count - 1

        for (i, element) in numberArray.enumerated() {
            while true {
                if let last = stack.last, last < element, count > 0 {
                    stack.removeLast()
                    count -= 1
                } else {
                    stack.append(element)
                    break
                }
            }
            if count == 0 {
                lastIndex = i
                break
            }
        }
        let start = number.index(number.startIndex, offsetBy: lastIndex + 1)
        let range = start..<number.endIndex
        
        for _ in (0..<count) {
            stack.removeLast()
        }

        return stack.reduce("") { $0 + String($1) } + number[range]
    }
}

