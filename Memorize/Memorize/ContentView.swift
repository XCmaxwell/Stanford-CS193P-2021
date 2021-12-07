//
//  ContentView.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/6.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🐶","🐱","🐭","🐹", "🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐽","🐸","🐵","🙈","🙉"," 🙊","🐒","🐔","🐧","🐦","🐤"," 🐣","🐥","🦆","🦅","🦉","🦇",]
    @State var horCount = 24
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65, maximum: 150))], content: {
                    ForEach(emojis[0..<horCount],id: \.self, content: {emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    })
                })
            }
            .foregroundColor(.red)
            
            Spacer()
            
            HStack {
                removeView
                Spacer()
                addView
            }.padding(.horizontal).font(.largeTitle)
        }
        .padding()
        
    }
    
    var removeView : some View {
        Button {
            if horCount > 1 {
                horCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    var addView : some View {
        Button {
            if horCount < emojis.count {
                horCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    
}

struct CardView : View {
    
    @State var isFaceUp = true
    var content: String
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.device)
                .previewDevice("iPhone 13 mini")
            ContentView()
                .previewLayout(.device)
                .previewDevice("iPhone 13 mini")
                .preferredColorScheme(.dark)
        }
    }
}
