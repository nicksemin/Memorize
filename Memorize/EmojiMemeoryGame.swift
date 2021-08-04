//
//  EmojiMemeoryGame.swift
//  Memorize
//
//  Created by Nick Semin on 10.05.2021.
//

//VIEW-MODEL specifically for emoji game

import SwiftUI



class EmojiMemoryGame{
    private var Game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String>{
    let emojis: Array<String> = ["🥳","😰","🤬", "😣", "😀"].shuffled()
    let randomInt = Int.random(in: 2..<6)
    return MemoryGame<String>(numberOfPairsOfCards: randomInt) { emojis[$0] }
    }
    //MARK - access to the Model
    var cards: Array<MemoryGame<String>.Card>{
         Game.cards
    }
   
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        Game.choose(card: card)
    }
   
}
