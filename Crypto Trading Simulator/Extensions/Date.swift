//
//  Date.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import Foundation

extension Date {
    
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shotFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shotFormatter.string(from: self)
    }
}
