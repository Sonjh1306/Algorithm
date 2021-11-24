import Foundation

class Deck {
    func solution() {
        let count = Int(readLine()!)!
        var result: [Int] = []
        
        for _ in 0..<count {
            let command = readLine()!.split(separator: " ").map{ String($0) }
            
            if command[0] == "push_front" && !command[1].isEmpty {
                result.insert(Int(command[1])!, at: 0)
            } else if command[0] == "push_back" && !command[1].isEmpty {
                result.append(Int(command[1])!)
            } else if command[0] == "pop_front" {
                if !result.isEmpty {
                    print(result.removeFirst())
                } else {
                    print(-1)
                }
            } else if command[0] == "pop_back" {
                if !result.isEmpty {
                    print(result.removeLast())
                } else {
                    print(-1)
                }
            } else if command[0] == "size" {
                print(result.count)
            } else if command[0] == "empty" {
                if result.isEmpty {
                    print(1)
                } else {
                    print(0)
                }
            } else if command[0] == "front" {
                if !result.isEmpty {
                    print(result[0])
                } else {
                    print(-1)
                }
            } else if command[0] == "back" {
                if !result.isEmpty {
                    print(result.last!)
                } else {
                    print(-1)
                }
            }
        }
        
    }
}
