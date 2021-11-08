import Foundation

class Lotto {
    
    func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
        
        var count = 0
        var zeroCount = 0
        var result: [Int] = []
        
        for index in lottos {
            if win_nums.contains(index) {
                count += 1
            } else if index == 0 {
                zeroCount += 1
            }
        }
        let best = lankCalculator(count: count + zeroCount)
        let worst = lankCalculator(count: count)
        result = [best, worst]
        
        return result
    }
    
    func lankCalculator(count: Int) -> Int {
        switch count {
            case 6: return 1
            case 5: return 2
            case 4: return 3
            case 3: return 4
            case 2: return 5
            default: return 6
        }
    }
}

