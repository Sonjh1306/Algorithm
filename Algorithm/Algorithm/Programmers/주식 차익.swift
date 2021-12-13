import Foundation

class StockGains {
    func solution(_ prices: [Int]) -> [Int] {
        
        var answer: [Int] = []
        var temp: [Int] = []
        
        for i in 0..<prices.count {
            
            let currentPrice = prices[i]
            var count = 1
            
            for j in i + 1..<prices.count {
                if prices[j] > currentPrice {
                    temp.append(count)
                } else {
                    count += 1
                }
            }
            if temp.isEmpty {
                answer.append(-1)
            } else {
                answer.append(temp.first!)
            }
            temp.removeAll()
        }
        
        return answer
    }
}
