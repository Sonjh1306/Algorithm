import Foundation

class TheBiggestNumber {
    func solution(_ numbers:[Int]) -> String {
        var strings = numbers.map{String($0)}
        
        strings.sort{ $0+$1 > $1+$0 }
        print(strings)
        let answer = strings.joined()
        if let num = Int(answer) { return String(num) }
        return answer
    }

}
