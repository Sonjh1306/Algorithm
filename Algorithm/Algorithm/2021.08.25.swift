import Foundation

class RecommendOccupationGroups {
    func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
        var dict: [String: Int] = ["SI": 0, "CONTENTS": 0, "HARDWARE": 0, "PORTAL": 0, "GAME": 0]
        var si = table[0].components(separatedBy: " ")
        var contents = table[1].components(separatedBy: " ")
        var hardware = table[2].components(separatedBy: " ")
        var portal = table[3].components(separatedBy: " ")
        var game = table[4].components(separatedBy: " ")
        
        si.reverse()
        contents.reverse()
        hardware.reverse()
        portal.reverse()
        game.reverse()
        
        for i in 0..<languages.count {
            let siIndex = si.firstIndex(of: languages[i]).map {Int($0)} ?? 0
            let contentsIndex = contents.firstIndex(of: languages[i]).map {Int($0)} ?? 0
            let hardwareIndex = hardware.firstIndex(of: languages[i]).map {Int($0)} ?? 0
            let portalIndex = portal.firstIndex(of: languages[i]).map {Int($0)} ?? 0
            let gameIndex = game.firstIndex(of: languages[i]).map {Int($0)} ?? 0
            dict["SI"]! += ((siIndex != 0 ? siIndex + 1 : siIndex) * preference[i])
            dict["CONTENTS"]! += ((contentsIndex != 0 ? contentsIndex + 1 : contentsIndex) * preference[i])
            dict["HARDWARE"]! += ((hardwareIndex != 0 ? hardwareIndex + 1 : hardwareIndex) * preference[i])
            dict["PORTAL"]! += ((portalIndex != 0 ? portalIndex + 1 : portalIndex) * preference[i])
            dict["GAME"]! += ((gameIndex != 0 ? gameIndex + 1 : gameIndex) * preference[i])
        }
        return dict.sorted(by: { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value}).first!.key
    }
}


class RunningSum {
    
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
            result.append(sum)
        }
        
        return result
    }
    
}

