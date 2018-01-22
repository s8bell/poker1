
var deckOfCards: [Int] = []

for i in 0...51{
    //alreadyUsedInShuffledDeck.append(false)
    
    deckOfCards.append(i)
    // shuffledDeck.append(i)
    
    
}
func shuffleTheDeck (myCards:[Int]) ->[Int] {
    var j = 0
    
    var shuffledDeck: [Int] = []
    var alreadyUsedInShuffledDeck: [Bool] = []
    
    
    
    
    for i in 0...51{
        alreadyUsedInShuffledDeck.append(false)
        shuffledDeck.append(i)
    }
    //alreadyUsedInShuffledDeck = [false]
    while j < 52 {
        
        let cardsInDeck = uint(52)
        
        
        let newIndex = Int(arc4random_uniform(cardsInDeck))
        if alreadyUsedInShuffledDeck[newIndex] == false {
            alreadyUsedInShuffledDeck[newIndex] = true
            shuffledDeck[newIndex] = myCards[j]
            
            //        shuffledDeck.remove(at: newIndex)
            //        shuffledDeck.insert(myCards[j], at: newIndex)
            //
            j = j + 1
            
        }
        
    }
    return  shuffledDeck
    
}

deckOfCards = shuffleTheDeck(myCards:deckOfCards)
print (deckOfCards)

//deckOfCards = shuffleTheDeck(myCards:deckOfCards)
print (deckOfCards.sorted())


