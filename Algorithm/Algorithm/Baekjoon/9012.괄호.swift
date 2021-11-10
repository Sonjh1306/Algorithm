import Foundation

class Parenthesis {
    func solution() {
        let count = Int(readLine()!)!
        var result = 0
        
        for _ in 0..<count {
            let input = readLine()!
            for index in input {
                if index == "(" {
                    result += 1
                } else if index == ")" {
                    result -= 1
                    if result < 0 {
                        break
                    }
                }
            }
        }
        print(result == 0 ? "YES" : "NO")
    }
}
