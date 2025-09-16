//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/12/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
                .font(.headline)

            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(
        leftImage: .silverpiece,
        text: "1 Silver Piece = 4 Silver Pennies",
        rightImage: .silverpenny,
    )
}
