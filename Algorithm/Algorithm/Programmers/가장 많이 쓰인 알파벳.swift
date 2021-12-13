import Foundation

class MaxAlphabet {
    func solution(_ s: String) -> String {
        
        let splitString = s.map{ String($0) }
        var dict: [String: Int] = [:]
        var result: [String] = []
        
        for string in splitString {
            if !dict.keys.contains(string.lowercased()) {
                dict[string.lowercased()] = 1
            } else {
                dict[string.lowercased()]! += 1
            }
        }
        let max = dict.values.max()
        
        for index in dict {
            if index.value == max {
                result.append(index.key)
            }
        }
        
        return result.sorted().joined()
    }
}
