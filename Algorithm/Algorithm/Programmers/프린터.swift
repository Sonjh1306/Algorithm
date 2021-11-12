import Foundation

class Printer {
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        
        var priority = priorities
        var nowIndex = location
        var answer = 0
        
        while true {
            if priority[0] == priority.max() {
                priority.removeFirst()
                answer += 1
                if nowIndex == 0 {
                    break
                } else {
                    nowIndex -= 1
                }
            } else {
                priority.append(priority.removeFirst())
                if nowIndex == 0 {
                    nowIndex = priority.count - 1
                } else {
                    nowIndex -= 1
                }
            }
        }
        
        return answer
    }
}
