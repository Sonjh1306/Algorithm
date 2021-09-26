import Foundation

class Reverse {
    func solution() -> Int {
        let input = readLine()!.map{ String($0) }
        var result: [String] = []
        var sameString = ""
        
        for index in 0..<input.count {
            if index == 0 {
                sameString += "\(input[index])"
            } else if index != 0 && input[index - 1] == input[index] {
                sameString += "\(input[index])"
            } else if index != 0 && input[index - 1] != input[index] {
                result.append(sameString)
                sameString = input[index]
            }
        }
        result.append(sameString)
        return result.count / 2
    }
}
