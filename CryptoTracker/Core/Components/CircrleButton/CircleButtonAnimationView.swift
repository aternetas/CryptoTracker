//
//  CircleButtonAnimationView.swift
//  CryptoTracker
//
//  Created by aternetas on 29.07.2025.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var isAnimate: Bool
    
    var body: some View {
        Circle()
            .stroke(.ocher, lineWidth: 4.0)
            .scaleEffect(isAnimate ? 1.0 : 0.0)
            .opacity(isAnimate ? 0.0 : 1.0)
            .animation(isAnimate ? .easeInOut(duration: 1.0) : .none, value: isAnimate)
    }
}

#Preview() {
    CircleButtonAnimationView(isAnimate: .constant(false))
}
