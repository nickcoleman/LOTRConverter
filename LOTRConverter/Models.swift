//
//  Currency.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/16/25.
//

import SwiftUI

enum Currency: String, CaseIterable, Identifiable {
    case copperPenny
    case silverPenny
    case silverPiece
    case goldPenny
    case goldPiece
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .copperPenny: return .copperpenny
        case .silverPenny: return .silverpenny
        case .silverPiece: return .silverpiece
        case .goldPenny: return .goldpenny
        case .goldPiece: return .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny: return "Copper Penny"
        case .silverPenny: return "Silver Penny"
        case .silverPiece: return "Silver Piece"
        case .goldPenny: return "Gold Penny"
        case .goldPiece: return "Gold Piece"
        }
    }
}
