import Foundation

class ValidateStackSequences {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack: [Int] = []
        var index = 0
        for push in pushed {
            stack.append(push)
            while !stack.isEmpty && stack.last! == popped[index] {
                index += 1
                stack.removeLast()
            }
        }
        return stack.isEmpty
    }
}
