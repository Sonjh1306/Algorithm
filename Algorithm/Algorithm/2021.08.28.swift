import Foundation

class MockTest {
    func solution(_ answers:[Int]) -> [Int] {
        let student1 = [1,2,3,4,5]
        let student2 = [2,1,2,3,2,4,2,5]
        let student3 = [3,3,1,1,2,2,4,4,5,5]
        var studentScore = [0,0,0]
        var result = [Int]()
        
        for index in 0..<answers.count {
            if answers[index] == student1[index % 5] {
                studentScore[0] += 1
            }
            if answers[index] == student2[index % 8] {
                studentScore[1] += 1
            }
            if answers[index] == student3[index % 10] {
                studentScore[2] += 1
            }
        }
        for i in 0..<studentScore.count {
            if studentScore[i] == studentScore.max()  {
                result.append(i + 1)
            }
        }
        
        return result
    }
}
