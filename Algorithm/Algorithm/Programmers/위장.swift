import Foundation

class Camouflage {
    func solution(_ clothes:[[String]]) -> Int {
        var dict: [String: Int] = [:]

        for index in clothes {
            if !dict.keys.contains(index[1]) {
                dict.updateValue(1, forKey: index[1])
            } else {
                dict[index[1]]! += 1
            }
        }
        //상의에 착용할 수 있는 옷이 2벌, 하의에 착용할 수 있는 옷이 3벌인 경우를 가정해보자.
        //상의에 착용할 수 있는 경우의 수는 가지고 있는 2벌 또는 입지 않는 경우이므로 총 3가지다.
        //하의는 가지고 있는 3벌을 입거나 입지 않는 경우로 총 4가지다.
        //상의와 하의의 조합을 따져보면 총 3x4 = 12가지이다.
        //하지만 아예 아무것도 입지 않는 경우는 없다고 했으므로 모든 조합의 경우의 수에서 1가지만 빼주면 된다.
        //=> 즉 공식을 세워보자면 각 종류별로 (가지고 있는 옷의 개수 + 1)을 모두 곱한 뒤 1을 빼주면 된다.
        var count = 1
        for num in dict.values {
            count *= (num + 1)
        }
        return count-1

    }
}
