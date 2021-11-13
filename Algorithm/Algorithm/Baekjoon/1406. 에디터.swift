import Foundation

class Editor {
    func solution() {
        var inputString = readLine()!.map{ String($0) }
        let count = Int(readLine()!)!
        var currentPoint = inputString.count
        
        for _ in 0..<count {
            let command = readLine()!.split(separator: " ").map{ String($0) }
            if command[0] == "L" {
                if currentPoint > 0 {
                    currentPoint -= 1
                }
            } else if command[0] == "D" {
                if currentPoint < inputString.count {
                    currentPoint += 1
                }
            } else if command[0] == "B" {
                if currentPoint > 0 && !inputString.isEmpty {
                    inputString.remove(at: currentPoint - 1)
                    currentPoint -= 1
                }
            } else if command[0] == "P" {
                inputString.insert(command[1], at: currentPoint)
                currentPoint += 1
            }
        }
        print(inputString.joined())
    }
}
