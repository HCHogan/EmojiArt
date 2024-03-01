//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Hank Hogan on 2024/2/23.
//

import Foundation

struct EmojiArt {
    var background: URL?
    private(set) var emojis = [Emoji]()
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji(_ emoji: String, at position: Emoji.Position, size: Int) {
        emojis.append(Emoji(
            string: emoji,
            position: position,
            size: size,
            id: uniqueEmojiId
        ))
        uniqueEmojiId += 1
    }
    
    mutating func resizeEmoji() { }
    
    struct Emoji: Identifiable {
        let string: String
        var position: Position
        var size: Int
        
        var id: Int
        
        struct Position {
            var x: Int
            var y: Int
            
            static let zero = Self(x: 0, y: 0)
        }
    }
}
