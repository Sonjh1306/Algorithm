import Foundation

class Change {
    func solution() -> Int {
        let price = Int(readLine()!)!
        var change = 1000 - price
        let moneyKinds = [500, 100, 50, 10, 5, 1]
        var result = 0
        
        for money in moneyKinds {
            if change > 0 {
                result += change / money
                change = change % money
            }
        }
        return result
    }
}

