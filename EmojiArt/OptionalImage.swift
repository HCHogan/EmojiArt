//
//  OptionalImage.swift
//  EmojiArt
//
//  Created by Hank on 2023/2/1.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        Group {
            if uiImage != nil {
                Image(uiImage: uiImage!)
            }
        }
    }
}
