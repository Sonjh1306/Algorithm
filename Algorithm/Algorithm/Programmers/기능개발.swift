import Foundation

class FunctionDevelopment {
    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        
        var p = progresses
        var s = speeds
        var count = 0
        var result: [Int] = []
        
        while !p.isEmpty {
            for i in 0..<p.count {
                p[i] = p[i] + s[i]
            }
            for _ in 0..<p.count {
                if p[0] >= 100 {
                    p.removeFirst()
                    s.removeFirst()
                    count += 1
                }
            }
            if count > 0 {
                result.append(count)
                count = 0
            }
        }
        return result
    }
}
