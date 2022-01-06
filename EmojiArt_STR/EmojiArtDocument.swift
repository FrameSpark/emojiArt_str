//
//  EmojiArtDocument.swift
//  EmojiArt_STR
//
//  Created by Вячеслав Строгонов on 06.01.2022.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    static let palette : String = "🍏🍎🐙😺💩✌️"
    @Published private var emojiArt: EmojiArt = EmojiArt()
}
