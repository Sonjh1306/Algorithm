import Foundation

//MARK: - TreeNode를 통해 그림을 그릴 수 있음.
 public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
 }

class Solution {

    func sumNumbers(_ root: TreeNode?) -> Int {
        // Input TreeNode를 바인딩한 후 stack에 튜플 형태로 담는다. 값을 계산하는 result는 초기값 0
        guard let root = root else { return 0 }
        
        var stack = [(root, 0)]
        var result = 0
        
        // Input TreeNode가 빈 배열이 될때까지 반복문을 돈다
        while !stack.isEmpty {

            let (node, val) = stack.popLast()!
            //var = curVal * 자릿수 증가를 위한 10 + 현재Node의 값
            let sumVal = val * 10 + node.val

            // TreeNode(1, TreeNode(3, TreeNode(4), TreeNode(5)), TreeNode(2, TreeNode(7), TreeNode(8)))
            // 1: node: 1, val: 0, sumVal = 1
            // 동시에 3,2에 sumVal = 1을 val로 전달
            // 2: node: 2, val: 1, sumVal = 12
            // 동시에 8,7에 sumVal = 12을 val로 전달
            // 8: node: 8, val: 12, sumVal = 128
            // 7: node: 7, val: 12, sumVal = 127
            // 다음 node가 없으므르 현재 result = 128 + 127
            // 3: node: 3, val: 1, sumVal = 13
            // 동시에 5,4에 sumVal = 13을 val로 전달
            // 5: node: 5, val: 13, sumVal = 135
            // 4: node: 4, val: 13, sumVal = 134
            // stack이 비었고 result = 128 + 127 + 135 + 134
            
            // Node가 마지막일 경우, result 값에 계산한 val를 더해준다.
            // 마지막이 아닐 경우는 각각 다음 Node와 계산한 val를 stack에 넣어준다.(좌우 동시에 넣어주는게 포인트)
            if node.left == nil && node.right == nil {
                result += sumVal
            } else {
                if let left = node.left {
                    stack.append((left, sumVal))
                }
                if let right = node.right {
                    stack.append((right, sumVal))
                }
            }
        }
        return result
    }
}


func BFS(graph: [String: [String]], start: String) -> [String] {
   var visitedQueue: [String] = []
   var needVisitStack: [String] = [start]
   
   while !needVisitStack.isEmpty {
       let node: String = needVisitStack.removeLast()
       if visitedQueue.contains(node) { continue }
       
       visitedQueue.append(node)
      needVisitStack += graph[node] ?? []
   }
   
   return visitedQueue
}
