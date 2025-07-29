//
//  CircleButtonView.swift
//  CryptoTracker
//
//  Created by aternetas on 29.07.2025.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .foregroundStyle(.ocher)
            .font(.headline)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.white)
            )
            .shadow(color: Color.white.opacity(0.4), radius: 10)
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "heart.fill")
}
