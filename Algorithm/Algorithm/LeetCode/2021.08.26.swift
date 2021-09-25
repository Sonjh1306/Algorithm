import Foundation

class FindTheWinnerOfTheCircularGame {
    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var gamePlayers = Array(1...n)
        
        while gamePlayers.count > 1 {
            for _ in 0..<k - 1 {
                let player = gamePlayers.removeFirst()
                gamePlayers.append(player)
                print(gamePlayers)
            }
            gamePlayers.removeFirst()
        }
        
        return gamePlayers.first!
    }
}

class MaximumNestingDepthOfTheParentheses {
    func maxDepth(_ s: String) -> Int {
        var m = 0
        var count = 0
        
        for char in s {
            if char == "(" {
                count += 1
                m = max(count, m)
            } else if char == ")" {
                count -= 1
            }
        }
        return m
    }
}
