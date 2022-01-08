//
//  OptionalImage.swift
//  EmojiArt_STR
//
//  Created by Вячеслав Строгонов on 08.01.2022.
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

