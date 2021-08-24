import Foundation

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
