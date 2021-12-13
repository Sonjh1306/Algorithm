import Foundation

class NewTeam {
    func solution(_ teamIDs: [String], _ additional: [String]) -> [String] {
        
        var answer: [String] = []
        
        for team in additional {
            if !teamIDs.contains(team) && !answer.contains(team) {
                answer.append(team)
            }
        }
        
        return answer
    }
}
