import Foundation

class RemoveOutermostParentheses {
    func removeOuterParentheses(_ S: String) -> String {
        var buffer = ""
        var bufferCounter = 0
        
        for s in S {
            if s == "(" {
                if bufferCounter > 0 { buffer.append(s) }
                bufferCounter += 1
            } else if s == ")" {
                bufferCounter -= 1
                if bufferCounter > 0 { buffer.append(s) }
            }
        }
        
        return buffer
    }
}
