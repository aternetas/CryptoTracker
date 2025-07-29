//
//  CoinModel.swift
//  CryptoTracker
//
//  Created by aternetas on 29.07.2025.
//

/*
 Info:
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
 "current_price": 117836,
 "market_cap": 2345441416066,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 2345441416066,
 "total_volume": 43674518773,
 "high_24h": 119026,
 "low_24h": 117170,
 "price_change_24h": 70.79,
 "price_change_percentage_24h": 0.06011,
 "market_cap_change_24h": 1336276942,
 "market_cap_change_percentage_24h": 0.05701,
 "circulating_supply": 19899056.0,
 "total_supply": 19899056.0,
 "max_supply": 21000000.0,
 "ath": 122838,
 "ath_change_percentage": -4.05278,
 "ath_date": "2025-07-14T07:56:01.937Z",
 "atl": 67.81,
 "atl_change_percentage": 173711.19854,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2025-07-29T17:21:23.323Z"
 */

import Foundation

struct CoinModel: Identifiable, Codable {
    
    let id: String
    let symbol: String
    let name: String
    let imageUrl: String
    let price: Double
    let priceChangeInPercent24H: Double
    let rank: Int
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name,
             imageUrl = "image",
             price = "current_price",
             priceChangeInPercent24H = "price_change_percentage_24h",
             rank = "market_cap_rank",
             holdings
    }
    
    let holdings: Double?
    
    var holdingsPrice: Double {
        holdings ?? 0.0 * price
    }
    
    func updateHoldings(holdings: Double) -> CoinModel {
        CoinModel(id: id,
                  symbol: symbol,
                  name: name,
                  imageUrl: imageUrl,
                  price: price,
                  priceChangeInPercent24H: priceChangeInPercent24H,
                  rank: rank,
                  holdings: holdings)
    }
}

extension CoinModel {
    static let mockModel = CoinModel(id: "bitcoin",
                                     symbol: "btc",
                                     name: "Bitcoin",
                                     imageUrl: "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
                                     price: 117836,
                                     priceChangeInPercent24H: 0.06011,
                                     rank: 1,
                                     holdings: nil)
}
