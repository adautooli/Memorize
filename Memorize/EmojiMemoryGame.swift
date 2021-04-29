//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Adauto Oliveira on 13/04/21.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "🤠"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory:  createCardContent)
    
    //MARK - Access to the model
    var cards: Array<MemoryGame<String>.Card>{
         model.cards
    }
    //MARK - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
