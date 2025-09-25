//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showCurrencySelection = false
    
    @State var leftCurrencyAmount = ""
    @State var rightCurrencyAmount = ""
    
    @State var leftCurrency = Currency.silverPiece
    @State var rightCurrency: Currency = .goldPiece
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    // Currency
                    VStack {
                        HStack {
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency Text: "Silver Piece"
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        } // End HStack: Silver Currency Info
                        .padding(.bottom, -5)
                        
                        TextField("Amount", text: $leftCurrencyAmount)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(.roundedBorder)
                    } // End VStack: Left Currency Section
                    .onTapGesture {
                        showCurrencySelection.toggle()
                    }
                    
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack {
                        HStack {
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        } // End HStack: Gold Currency Info
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showCurrencySelection.toggle()
                        }
                        
                        TextField("Amount", text: $rightCurrencyAmount)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                        
                    } // End VStack: Right Currency Conversion Section
                } // End HStack: Currency Conversion Section
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                        print("showExchange Value \(showExchangeInfo)" )
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing, 20)                } // End HStack: Info Button
            } // End Main VStack
        } // End ZStack
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfo()
        }
        .sheet(isPresented: $showCurrencySelection) {
            SelectCurrency(
                topCurrency: $leftCurrency,
                bottomCurrency: $rightCurrency
            )
        }
    } // End Body
}

#Preview {
    ContentView()
}
