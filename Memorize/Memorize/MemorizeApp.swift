//
//  MemorizeApp.swift
//  Memorize
//
//  Created by MINI-01 on 2021/12/6.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
