//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/12/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    let rows = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                LazyHGrid(rows: rows) {
                    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    CurrencyIcon(currencyImage: .silverpenny, currencyName: "Silver Penny")
                    CurrencyIcon(currencyImage: .silverpiece, currencyName: "Silver Piece")
                    CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny")
                    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                }
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                HStack {
                    // Coin Option
                }
                Spacer()
                DismissButton()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency( )
}
