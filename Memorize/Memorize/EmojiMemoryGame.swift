//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/10.
//

import SwiftUI
func makeCarcContent(index: Int) -> String {
    return "🐶"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCarcContent(index:))
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
