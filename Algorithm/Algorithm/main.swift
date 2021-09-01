import Foundation

let rotateArray = RotateArray()
var nums = [1,2,3,4]
rotateArray.rotate(&nums, 3)


let binarySearch = BinarySearch()
print(binarySearch.search([-1,0,3,5,9,12], 9))
print(binarySearch.search([-1,0,3,5,9,12], 2))
