import Foundation

class Josephus {
    func solution() {
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        var array = Array(1...input[0])
        let count = input[1]
        var queue: [Int] = []
        print(array)
        while !array.isEmpty {
            if array.count >= count {
                for i in 0..<count {
                    if i != count - 1 {
                        let num = array.remove(at: i)
                        array.append(num)
                    } else {
                        let num = array.remove(at: i)
                        queue.append(num)
                    }
                }
            } else {
                let num = count % array.count
                queue.append(array.remove(at: num))
            }
        }
        print(queue)
    }
}
