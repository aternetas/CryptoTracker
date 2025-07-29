//
//  Double+ext.swift
//  CryptoTracker
//
//  Created by aternetas on 29.07.2025.
//

import Foundation

extension Double {
    
    var twoDigitsAfterComma: String {
        if self == 0 {
            return "0"
        }
        
        return String(format: "%.2f", self)
    }
    
    func toMarketPrice() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .init(identifier: "en_US")
        formatter.maximumFractionDigits = 2
        return formatter.string(from: .init(value: self)) ?? "$\(twoDigitsAfterComma)"
    }
    
    func toPercentage() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.locale = .init(identifier: "en_US")
        formatter.maximumFractionDigits = 2
        return formatter.string(from: .init(value: self)) ?? "\(twoDigitsAfterComma)%"
    }
}
