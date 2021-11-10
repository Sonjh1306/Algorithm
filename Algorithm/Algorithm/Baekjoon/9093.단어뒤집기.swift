import Foundation

class FlipTheWord {
    func solution() {
        let count = Int(readLine()!)!
        var result = ""
        
        for _ in 0..<count {
            let input = readLine()!.split(separator: " ").map{ String($0) }
            for i in 0..<input.count {
                let reverseString = input[i].map{ String($0) }.reversed().joined()
                result += "\(reverseString) "
            }
            print(result)
            result = ""
        }
    }
    
}

