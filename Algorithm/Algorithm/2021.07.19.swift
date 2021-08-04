import Foundation

//MARK: - 프로그래머스 H-Index
class Algorithm1 {
    func solution(_ citations:[Int]) -> Int {
        var count = 0
        let sorted = citations.sorted()
        for i in 0..<citations.count {
            for citation in citations {
                if citation >= i  {
                    count += 1
                }
            }
            if count == i {
                return count
            } else {
                count = 0
            }
        }
        return sorted[0] < citations.count ? sorted[0] : citations.count
    }
    
//    func solution(_ citations:[Int]) -> Int {
//        let sorted = citations.sorted(by: >)
//        for i in 0..<sorted.count {
//            if i >= sorted[i] {
//                return i
//            }
//        }
//        return sorted.count
//    }
}

