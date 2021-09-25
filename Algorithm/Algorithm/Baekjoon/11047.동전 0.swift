import Foundation

class Coin0 {
    func solution() -> Int {
        let input = readLine()!.split(separator: " ").map { String($0)}
        let coinsCount = input[0]
        let sum = input[1]
        let splitSum = input[1].map{ String($0) }
        var coins: [Int] = []
        var result = 0
        
        for _ in 0..<Int(coinsCount)! {
            let coin = Int(readLine()!)!
            if coin < Int(sum)! {
                coins.append(coin)
            }
        }
        coins = coins.sorted(by: >)
        
        for index in 0..<sum.count {
            if sum % coins[index] {
                <#code#>
            }
        }
        return result
    }

}
