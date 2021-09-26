import Foundation

class Laundry {
    func solution() -> String {
        let input = Int(readLine()!)!
        var moneys: [Int] = []
        var change = 0
        let kind = [25, 10, 5, 1]
        var result: [[String]] = []
        var resultString = ""
        for _ in 0..<input {
            let a = Int(readLine()!)!
            moneys.append(a)
        }
        
        for money in moneys {
            change = money
            var basket: [String] = []
            for index in 0..<kind.count {
                basket.append(String(change / kind[index]))
                change = change % kind[index]
            }
            result.append(basket)
        }
        for index in result {
            var sumString = ""
            for i in 0..<index.count {
                if i != index.count - 1 {
                    sumString += "\(index[i]) "
                } else {
                    sumString += "\(index[i])\n"
                }
            }
            resultString += sumString
        }
        return resultString
    }
}


