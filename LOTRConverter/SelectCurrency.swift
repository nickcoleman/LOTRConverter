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
    
    // These bindings allow the parent view to control which currencies are selected and to be updated when the user makes a selection
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
                
                // IconGrid is a custom view that displays a grid of currency icons and allows the user to select one
                // It takes a binding to a Currency variable so that it can update the selected currency when the user taps an icon
                // Here, we pass the topCurrency binding to the first IconGrid to allow selection of the starting currency
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
    // Because SelectCurrency requires bindings, we need to create some state variables to bind to for the preview
    // These state variables will allow us to see how the SelectCurrency view behaves when the user selects different currencies
    @Previewable @State var topCurrency: Currency = .silverPiece
    @Previewable @State var bottomCurrency: Currency = .goldPiece
    SelectCurrency(
        topCurrency: $topCurrency,
        bottomCurrency: $bottomCurrency
    )
}
