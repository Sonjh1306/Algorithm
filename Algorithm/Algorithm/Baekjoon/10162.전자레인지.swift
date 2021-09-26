import Foundation

class Microwave {
    func solution() -> String {
        var input = Int(readLine()!)!
        let timers = [300, 60, 10]
        var result: [Int] = []
        
        for timer in timers {
            result.append(input / timer)
            input = input % timer
        }
        if input == 0 {
            var resultString = ""
            for index in 0..<result.count {
                if index != result.count - 1 {
                    resultString += "\(result[index]) "
                } else {
                    resultString += "\(result[index])"
                }
            }
            return resultString
        } else {
            return "-1"
        }
    }
}
