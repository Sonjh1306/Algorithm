import Foundation

class JadenCase {
    func solution(_ s:String) -> String {
        let splitString = s.split(separator: " ").map{ String($0) }
        var answer: [String] = []
        var result: String = ""
        
        for i in 0..<splitString.count {
            var string = ""
            for (index, value) in splitString[i].enumerated() {
                if index == 0 && value.asciiValue! >= 97{
                    string += String(value).uppercased()
                } else {
                    string += String(value).lowercased()
                }
            }
            answer.append(string)
        }
        
        for i in 0..<answer.count {
            if i == 0 {
                result += answer[i]
            } else {
                result += " \(answer[i])"
            }
        }
        
        return result
    }
}
