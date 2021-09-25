import Foundation

class KeysAndRooms {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var collectKeys = rooms[0]
        var usedKeys: Set<Int> = [0]
        
        while !collectKeys.isEmpty {
            let key = collectKeys.removeLast()
            
            if !usedKeys.contains(key) {
                usedKeys.insert(key)
                collectKeys.append(contentsOf: rooms[key])
            }
        }

        return usedKeys.count == rooms.count
    }
}
