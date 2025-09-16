//
//  DismissButton.swift
//  LOTRConverter
//
//  Created by Nick Coleman on 9/16/25.
//

import SwiftUI

struct DismissButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Done") {
            dismiss()
        }
        .font(.title)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(
            Rectangle()
                .fill(Color.brown.mix(with: .black, by: 0.2))
                .cornerRadius(10)
        )
        .foregroundStyle(.white)
    }
}

#Preview {
    DismissButton()
}
