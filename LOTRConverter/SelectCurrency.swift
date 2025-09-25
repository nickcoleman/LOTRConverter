//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/12/25.
//

import SwiftUI


struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    let columns = [GridItem(), GridItem(), GridItem()]
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                IconGrid(currency: $topCurrency)
                
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                IconGrid(currency: $bottomCurrency)
                
                Spacer()
                DismissButton()
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPiece
    @Previewable @State var bottomCurrency: Currency = .goldPiece
    SelectCurrency(
        topCurrency: $topCurrency,
        bottomCurrency: $bottomCurrency
    )
}
