//
//  Spinning.swift
//  EmojiArt
//
//  Created by Hank on 2023/2/4.
//

import SwiftUI

struct Spinning: ViewModifier {
    @State var isVisible:Bool = false
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: isVisible ? 360 : 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            .onAppear{
                self.isVisible = true
            }
    }
}

extension View {
    func spinning() -> some View {
        return self.modifier(Spinning())
    }
}
