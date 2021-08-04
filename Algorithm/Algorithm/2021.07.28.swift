import Foundation

class QueensAttacktheKing {
    func queensAttacktheKing(_ queens: [[Int]], _ king: [Int]) -> [[Int]] {
        var leftWidth: [[Int]] = []
        var rightWidth: [[Int]] = []
        var upLength: [[Int]] = []
        var downLength: [[Int]] = []
        var leftUPDiagonalLine: [[Int]] = []
        var rightDownDiagonalLine: [[Int]] = []
        var rightUpDiagonalLine: [[Int]] = []
        var leftDownDiagonalLine: [[Int]] = []
        var result: [[Int]] = []
        
        // 동일한 행,열 찾기
        for queen in queens {
            // 왼쪽 행 찾기
            if king[0] == queen[0] && queen[1] < king[1] {
                leftWidth.append(queen)
            }
            // 오른쪽 행 찾기
            if king[0] == queen[0] && queen[1] > king[1] {
                rightWidth.append(queen)
            }
            // 위쪽 열 찾기
            if king[1] == queen[1] && queen[0] < king[1] {
                upLength.append(queen)
            }
            // 아래쪽 열 찾기
            if king[1] == queen[1] && queen[0] > king[1] {
                downLength.append(queen)
            }
        }
        // 대각선 찾기
        for queen in queens {
            for index in 0...7 {
                // 왼쪽 위 대각선 찾기
                if queen == [king[0] - index, king[1] - index] {
                    leftUPDiagonalLine.append(queen)
                // 오른쪽 위 대각선 찾기
                } else if queen == [king[0] - index, king[1] + index] {
                    rightUpDiagonalLine.append(queen)
                // 왼쪽 아래 대각선 찾기
                } else if queen == [king[0] + index, king[1] - index] {
                    leftDownDiagonalLine.append(queen)
                // 오른쪽 아래 대각선 찾기
                } else if queen == [king[0] + index, king[1] + index] {
                    rightDownDiagonalLine.append(queen)
                }
            }
        }
        if !leftWidth.isEmpty {
            let leftWidthMax = leftWidth.map { $0.last! }.max()
            let leftWidthMaxIndex = leftWidth.last?.lastIndex(of: leftWidthMax!)
            result.append(leftWidth[leftWidthMaxIndex! - 1])
        }

//        if !rightWidth.isEmpty {
//
//            let rightWidthMin = rightWidth.map{ $0.last! }.min()
//
//            let rightWidthMinIndex = rightWidth.last?.firstIndex(of: rightWidthMin!)
//            result.append(rightWidth[rightWidthMinIndex - 1])
//        }
//
//        if upLength.count >= 0 {
//            let upLengthMax = upLength.map{ $0.first! }.max()!
//            let upLengthMaxIndex = upLength.first?.lastIndex(of: upLengthMax)
//            result.append(upLength[upLengthMaxIndex! - 1])
//        }
//        if downLength.count >= 0 {
//            let downLengthMin = downLength.map{ $0.first! }.min()!
//            let DownLengthMinIndex = downLength.first?.firstIndex(of: downLengthMin)
//            result.append(downLength[DownLengthMinIndex! - 1])
//        }
        
        return result
    }

}
