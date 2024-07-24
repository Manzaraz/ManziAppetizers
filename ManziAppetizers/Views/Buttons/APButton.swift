//
//  APButton.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 23/07/2024.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .foregroundStyle(.white)
                .background(Color.brandPrimary)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

#Preview {
    APButton(title: "Test Button")
}
