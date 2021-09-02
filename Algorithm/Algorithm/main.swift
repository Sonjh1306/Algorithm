import Foundation

let searchInsertPosition = SearchInsertPosition()
print(searchInsertPosition.searchInsert([1,3,5,6], 5))
print(searchInsertPosition.searchInsert([1,3,5,6], 2))
print(searchInsertPosition.searchInsert([1,3,5,6], 7))
print(searchInsertPosition.searchInsert([1,3,5,6], 0))
print(searchInsertPosition.searchInsert([1], 0))
