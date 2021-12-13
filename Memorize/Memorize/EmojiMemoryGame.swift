//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/10.
//

import SwiftUI

class EmojiMemoryGame {
    static var emojis = ["🐶","🐱","🐭","🐹", "🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐽","🐸","🐵","🙈","🙉"," 🙊","🐒","🐔","🐧","🐦","🐤"," 🐣","🐥","🦆","🦅","🦉","🦇",]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { index in
            EmojiMemoryGame.emojis[index]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
