import Foundation

class NAndM {

    var n = 0
    var length = 0
    
    func solution() {
        let input = readLine()!.split(separator: " ")
        n = Int(input.first!)!
        length = Int(input.last!)!
        
        for i in 1...n {
            track(num: i, numbers: [i])
        }
        
    }
    
    func track(num: Int, numbers: [Int]) {
         guard numbers.count < length else {
             print(numbers.reduce(into: "", { $0 += "\($1) "}).dropLast())
             return
         }
        if num <= n {
            for i in 1...n {
               if !numbers.contains(i) {
                   track(num: i, numbers: numbers + [i])
               }
            }
        }
     }
}
