import Foundation

class TopKFrequentElements {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        
        for num in nums {
            if !dict.keys.contains(num) {
                dict.updateValue(1, forKey: num)
            } else {
                dict[num]! += 1
            }
        }
        let sortedDict = dict.sorted { dict1, dict2 in
            return dict1.value > dict2.value
        }
        
        for i in 0..<k {
            result.append(sortedDict[i].key)
        }
        
        return result
    }
}
