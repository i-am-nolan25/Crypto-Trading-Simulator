//
//  RateLimiter.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/22/24.
//

import Foundation

class RateLimiter {
    private let limit: Int
    private let interval: TimeInterval
    private var tokens: Int
    private var lastRefillTime: Date
    
    init(limit: Int, interval: TimeInterval) {
        self.limit = limit
        self.interval = interval
        self.tokens = limit
        self.lastRefillTime = Date()
    }
    
    func canMakeRequest() -> Bool {
        refillTokens()
        if tokens > 0 {
            tokens -= 1
            return true
        } else {
            return false
        }
    }
    
    private func refillTokens() {
        let now = Date()
        let timeSinceLastRefill = now.timeIntervalSince(lastRefillTime)
        let tokensToAdd = Int(timeSinceLastRefill / interval)
        tokens = min(tokens + tokensToAdd, limit)
        lastRefillTime = now
    }
}
