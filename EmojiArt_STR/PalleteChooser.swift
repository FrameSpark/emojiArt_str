//
//  PalleteChooser.swift
//  EmojiArt_STR
//
//  Created by Вячеслав Строгонов on 09.01.2022.
//

import SwiftUI

struct PalleteChooser: View {
    @ObservedObject var document: EmojiArtDocument
    @Binding var chosenPallete: String
    
    var body: some View {
        HStack {
            Stepper( onIncrement: {
                self.chosenPallete = self.document.palette(after: self.chosenPallete)
            }, onDecrement: {
                self.chosenPallete = self.document.palette(before: self.chosenPallete)
            }, label: {EmptyView()})
            Text(self.document.paletteNames[self.chosenPallete] ?? "")
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}
