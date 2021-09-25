import Foundation

class SugarDelivery {
    func solution() -> Int {
        var input = Int(readLine()!)!
        var count = 0
        
        if input % 5 == 0 {
            return input / 5
        }
        
        while input >= 0 {
            input -= 3
            count += 1
            if input % 5 == 0 {
                return count + (input / 5)
            }
        }
        return -1
    }
}

