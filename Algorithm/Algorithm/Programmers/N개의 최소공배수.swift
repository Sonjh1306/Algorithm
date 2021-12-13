import Foundation

class TheLeastCommonMultiple {
    
    func solution(_ arr:[Int]) -> Int {
        
        var answer: Int = arr.min()!
        var answerBool: [Bool] = []

        while true {
            answer += 1
            answerBool = []
            
            for index in arr {
                if answer % index == 0 {
                    answerBool.append(true)
                } else {
                    answerBool.append(false)
                }
            }
            
            if answerBool.count == arr.count  && !answerBool.contains(false){
                break
            }
        }
        
        return answer
    }
}
