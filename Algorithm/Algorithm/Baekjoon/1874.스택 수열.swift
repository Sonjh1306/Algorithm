import Foundation

class StackSequence {
    func solution() {
        let n = Int(readLine()!)!

        var count = 1
        var stack: [Int] = []
        var answer: [String] = []

        for _ in 0..<n {
            let num = Int(readLine()!)!
            
            while count <= num {
                stack.append(count)
                answer.append("+")
                count += 1
            }
            
            if stack.last == num {
                stack.removeLast()
                answer.append("-")
            } else {
                print("NO")
                exit(0)
            }
        }
        print(answer.joined(separator: "\n"))
    }
}
