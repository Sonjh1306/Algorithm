import Foundation

class Queue {
    func solution() {
        var queue: [Int] = []
        let count = Int(readLine()!)!
        
        for _ in 0..<count {
            let command = readLine()!.split(separator: " ")
            if command[0] == "push" {
                queue.append(Int(command[1])!)
            } else if command[0] == "pop" {
                if !queue.isEmpty {
                    print(queue.removeFirst())
                } else {
                    print(-1)
                }
            } else if command[0] == "size" {
                print(queue.count)
            } else if command[0] == "empty" {
                if queue.isEmpty {
                    print(1)
                } else {
                    print(0)
                }
            } else if command[0] == "front" {
                if !queue.isEmpty {
                    print(queue.first!)
                } else {
                    print(-1)
                }
            } else if command[0] == "back" {
                if !queue.isEmpty {
                    print(queue.last!)
                } else {
                    print(-1)
                }
            }
        }
    }
}
