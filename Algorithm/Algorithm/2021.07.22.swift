import Foundation

class Algorithm2 {
    func solution(_ brown:Int, _ yellow:Int) -> [Int] {
        for i in 1...yellow  {
            // 노란색의 가로 줄의 수
            let yellowLine = yellow / i
            // 노란색 한 줄의 수
            let yellowCount = yellow / yellowLine
            // 전체 가로 줄의 수
            let totalLine = yellowLine + 2
            // 첫줄과 마지막줄의 브라운색 수
            let first = yellowCount + 2
            let last = yellowCount + 2
            // 노란색 외곽 줄의 브라운색 수
            let side = yellowLine * 2
            
            // 윗줄, 마지막줄, 사이드의 합이 brown과 같고,
            // 카펫의 가로 길이는 세로 길이와 같거나, 세로 길이보다 길다는 조건을 걸어준다.
            if (first + last + side) == brown && first >= totalLine {
                return [first, totalLine]
            }
        }
        return []
    }
}

