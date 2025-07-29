//
//  CoinCellView.swift
//  CryptoTracker
//
//  Created by aternteas on 29.07.2025.
//

import SwiftUI

struct CoinCellView: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            
            Spacer()
            
            rightColumn
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 6)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinCellView(coin: CoinModel.mockModel)
}

extension CoinCellView {
    
    private var leftColumn: some View {
        HStack {
            Text("\(coin.rank)")
                .font(.headline)
                .foregroundStyle(.ocher)
            
            Image(systemName: "heart.fill")
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .foregroundStyle(.lightGreen)
                )
            
            Text("\(coin.name) (\(coin.symbol.uppercased()))")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(.ocher)
        }
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text("\(coin.price.toMarketPrice())")
                .font(.headline)
                .foregroundStyle(Color.white)
            
            Text("\(coin.priceChangeInPercent24H.toPercentage())")
                .font(.headline)
                .foregroundStyle(coin.priceChangeInPercent24H > 0 ? .lightGreen : Color.orange)
        }
    }
}
