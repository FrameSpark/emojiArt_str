//
//  EmojiArtDocumentView.swift
//  EmojiArt_STR
//
//  Created by Вячеслав Строгонов on 06.01.2022.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    @ObservedObject var document : EmojiArtDocument
    var body: some View {
        VStack{
            ScrollView (.horizontal){
                HStack {
                    ForEach(EmojiArtDocument.palette.map{String($0)}, id : \.self) { emoji in
                        Text(emoji)
                            .font(Font.system(size:self.defaultEmojiSize))
                    }
                }
            } .padding(.horizontal)
            Rectangle().foregroundColor(.yellow).edgesIgnoringSafeArea([.horizontal,.bottom])
        }
    }
    private let defaultEmojiSize: CGFloat = 100
}
