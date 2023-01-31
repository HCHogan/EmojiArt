//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Hank on 2023/1/31.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
