//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Hank Hogan on 2024/2/23.
//

import Foundation

struct EmojiArt: Codable {
    var background: URL?
    private(set) var emojis = [Emoji]()
    
    private var uniqueEmojiId = 0

    public func json() throws -> Data {
        let encoded = try JSONEncoder().encode(self)
        print("EmojiArt = \(String(describing: String(data: encoded, encoding: .utf8) ?? nil))")
        return encoded
    }

    init(json: Data) throws {
        self = try JSONDecoder().decode(EmojiArt.self, from: json)
    }

    init() { }
    
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
    
    struct Emoji: Codable, Identifiable {
        let string: String
        var position: Position
        var size: Int
        
        var id: Int
        
        struct Position: Codable {
            var x: Int
            var y: Int
            
            static let zero = Self(x: 0, y: 0)
        }
    }
}
