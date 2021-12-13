//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/10.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject {
    static var emojis = ["🐶","🐱","🐭","🐹", "🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐽","🐸","🐵","🙈","🙉"," 🙊","🐒","🐔","🐧","🐦","🐤"," 🐣","🐥","🦆","🦅","🦉","🦇",]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { index in
            EmojiMemoryGame.emojis[index]
        }
    }
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
