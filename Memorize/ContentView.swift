//
//  ContentView.swift
//  Memorize
//
//  Created by Nick Semin on 10.05.2021.
//

//VIEW

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View{
        HStack {
            ForEach(viewModel.cards){card in
                CardView(card: card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .onTapGesture {
                    self.viewModel.choose(card: card)}
                }
            
        }
        .foregroundColor(.purple)
        .padding()
        .font(viewModel.cards.count < 10 ? .largeTitle : .body)
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: EmojiMemoryGame())
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            if card.isFaceUp{
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 4.0)
                Text (card.content)
            }
            else{
            RoundedRectangle(cornerRadius: 10.0).fill()
            }
            }
    }
}
}
