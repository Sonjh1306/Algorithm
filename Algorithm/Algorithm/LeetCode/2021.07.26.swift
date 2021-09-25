import Foundation

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var resultDict = [String: [String]]()
        for str in strs {
            let sortedString = String(str.sorted())
            resultDict[sortedString] = resultDict[sortedString] == nil ? [str] : resultDict[sortedString]! + [str]
        }
        return Array(resultDict.values)
    }
    
    
    func groupAnagrams2(_ strs: [String]) -> [[String]] {
        var dict: [String : [String]] = [:]
        
        for str in strs {
            let sortedString = String(str.sorted())
            
            if !dict.keys.contains(sortedString) {
                dict[sortedString] = []
            }
            dict[sortedString]?.append(str)
        }
        
//
//        for str in key {
//            var result = [String]()
//            for i in 0..<convertedArray.count  {
//                if str == convertedArray[i] {
//                    result.append(strs[i])
//                }
//            }
//            resultArray.append(result)
//        }
        return Array(dict.values)
    }
}

