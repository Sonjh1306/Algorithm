import Foundation

class RabbitsInForest {
    func numRabbits(_ answers: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        var count = answers.count
        
        for answer in answers {
            count += answer
            if dict[answer] == nil {
                dict[answer] = 1
            } else if dict[answer]! < answer + 1 {
                dict[answer] = dict[answer]! + 1
                count -= answer + 1
            } else {
                dict[answer] = 1
            }
        }
        return count
    }

}

class JewelsAndStones {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var dict: [String: Int] = [:]
        var count = 0

        for jewel in jewels {
            dict.updateValue(0, forKey: String(jewel))
        }

        for stone in stones {
            if dict.keys.contains(String(stone)) {
                dict[String(stone)]! += 1
            }
        }

        dict.forEach { (key: String, value: Int) in
            return count += value
        }

        return count
    }
}

class SortingTheSentence {
    func sortSentence(_ s: String) -> String {
        let inputString = s.components(separatedBy: " ").sorted { string1, string2 in
            return string1.last! < string2.last!
        }
        var resultArray = [String]()
        var result = ""
        
        
        for string in inputString {
            var string = string
            string.removeLast()
            resultArray.append(string)
        }
        
        for i in 0..<resultArray.count {
            if resultArray.count - 1 != i {
                result += "\(resultArray[i]) "
            } else {
                result += "\(resultArray[i])"
            }
        }
        
        return result
    }
}


