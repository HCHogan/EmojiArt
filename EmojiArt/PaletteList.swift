//
//  PaletteList.swift
//  EmojiArt
//
//  Created by Hank Hogan on 2024/3/6.
//

import SwiftUI

struct PaletteList: View {
    @EnvironmentObject var store: PaletteStore
    var body: some View {
        List(store.palettes) { palette in
            NavigationLink(value: palette) {
                Text(palette.name)
            }
        }
        .navigationDestination(for: Palette.self) { palette in
            PaletteView(palette: palette)
        }
    }
}

struct PaletteView: View {
    let palette: Palette

    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 40))]) {
                ForEach(palette.emojis.uniqued.map(String.init), id: \.self) { emoji in
                    Text(emoji)
                }
            }
            Spacer()
        }
        .padding()
        .font(.largeTitle)
    }
}

#Preview {
    PaletteList()
}
