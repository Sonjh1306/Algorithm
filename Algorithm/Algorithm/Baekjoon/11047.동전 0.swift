import Foundation

class Coin0 {
    func solution() -> Int {
        let input = readLine()!.split(separator: " ").map { String($0)}
        let coinsCount = input[0]
        var sum = Int(input[1])!
        var coins: [Int] = []
        var result = 0
        
        for _ in 0..<Int(coinsCount)! {
            let coin = Int(readLine()!)!
            if coin < sum {
                coins.append(coin)
            }
        }
        coins = coins.sorted(by: >)
        
        for coin in coins {
            if sum > 0 {
                result += sum / coin
                sum = sum % coin
            }
        }
        return result
    }

}

