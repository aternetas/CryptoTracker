//
//  HomeView.swift
//  CryptoTracker
//
//  Created by aternetas on 29.07.2025.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            Color.darkGreen
                .ignoresSafeArea()
            
            VStack {
                header
                
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
}

extension HomeView {
    
    private var header: some View {
        HStack() {
            CircleButtonView(iconName: isShowPortfolio ? "plus" : "info")
                .animation(nil, value: isShowPortfolio)
                .background(
                    CircleButtonAnimationView(isAnimate: $isShowPortfolio)
                )
            
            Spacer()
            
            Text(isShowPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.ocher)
                .animation(.none)
            
            Spacer()
            
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(.degrees(isShowPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring(duration: 0.8, bounce: 0.5)) {
                        isShowPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal, 10)
    }
}
