//
//  ContentView.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/6.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel : EmojiMemoryGame
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65, maximum: 150))], content: {
                    ForEach(viewModel.cards, content: {card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    })
                })
            }
            .foregroundColor(.red)
        }
        .padding()
        
    }
}

struct CardView : View {
    
    var card: MemoryGame<String>.Card
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        Group {
            ContentView(viewModel: game)
                .previewLayout(.device)
                .previewDevice("iPhone 13 mini")
            ContentView(viewModel: game)
                .previewLayout(.device)
                .previewDevice("iPhone 13 mini")
                .preferredColorScheme(.dark)
        }
    }
}
