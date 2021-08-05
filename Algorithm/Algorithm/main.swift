import Foundation

let keysAndRooms = KeysAndRooms()
print(keysAndRooms.canVisitAllRooms([[1],[2],[3],[]]))
print(keysAndRooms.canVisitAllRooms([[1,3],[3,0,1],[2],[0]]))
print(keysAndRooms.canVisitAllRooms([[2],[],[1]]))
