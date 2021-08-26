import Foundation

class FindTheWinnerOfTheCircularGame {
    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var gamePlayers = Array(1...n)
        
        // k-1 배열을 새로 만든다.
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
