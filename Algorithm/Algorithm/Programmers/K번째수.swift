import Foundation

class Number {
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        
        var basket: [Int] = []
        var result: [Int] = []
        
        for i in 0..<commands.count {
            let command = commands[i]
            for j in 0..<array.count {
                if j >= command[0] - 1 && j <= command[1] - 1  {
                    basket.append(array[j])
                }
            }
            basket.sort()
            result.append(basket[command[2]])
            basket.removeAll()
        }
        
        return result
    }
}
