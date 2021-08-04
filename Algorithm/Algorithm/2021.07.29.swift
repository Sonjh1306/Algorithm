import Foundation

class RevealCardsInIncreasingOrder {
    func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
        var inputDeck = deck.sorted()
        var resultDeck = [Int]()
        while !inputDeck.isEmpty {
            if let resultDeckCard = resultDeck.last{
                resultDeck.removeLast()
                resultDeck.insert(resultDeckCard, at: 0)
            }
            let inputDeckCard = inputDeck.removeLast()
            resultDeck.insert(inputDeckCard, at: 0)
        }
        return resultDeck
    }
}
