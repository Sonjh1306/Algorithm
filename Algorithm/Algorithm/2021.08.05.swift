import Foundation

// 시간 초과 남....

class FindKPairswithSmallestSums {
    
    func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
        var convertedArray: [[Int]] = []
        var result: [[Int]] = []

        // 조합할 수 있는 숫자 배열 만들기
        for i in nums1 {
            for j in nums2 {
                convertedArray.append([i,j])
            }
        }

        // 배열 정렬 필요(각 배열의 값이 작은 순서대로)
        convertedArray.sort { arr1, arr2 in
            return arr1[0] + arr1[1] < arr2[0] + arr2[1]
        }
        
        // k번째 순서까지 result 배열에 넣어주기
        for index in 0..<convertedArray.count {
            if result.count < k  {
                result.append(convertedArray[index])
            }
        }

        return result
    }
    
}
