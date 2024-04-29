//
//  CoinDataService.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/22/24.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    private let rateLimiter = RateLimiter(limit: 30, interval: 60.0) // 30 requests per minute

    var cancellables = Set<AnyCancellable>()
    
    var coinSubscribtion: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard rateLimiter.canMakeRequest() else {
            print("Rate limit exceeded. Unable to make request.")
            return
        }

        // Make sure to add your own API key
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Wait for 2 seconds
            guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&X-Cg-Pro-Api-Key={YOUR_API_KEY}") else {
                print("Invalid URL")
                return
            }
            
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { [weak self] (data, response, error) in
                guard let self = self else { return }
                
                if let error = error {
                    print("Error: \(error)")
                    return
                }
                
                guard let response = response as? HTTPURLResponse else {
                    print("Invalid response: response is not HTTPURLResponse")
                    return
                }
                
                print("Response status code: \(response.statusCode)")
                
                if response.statusCode == 429 {
                    print("Rate limit exceeded.")
                }
                
                guard (200..<300).contains(response.statusCode) else {
                    print("Invalid response status code: \(response.statusCode)")
                    return
                }
                
                guard let data = data else {
                    print("No data received")
                    return
                }
                
                do {
                    let coins = try JSONDecoder().decode([CoinModel].self, from: data)
                    print("Number of coins received: \(coins.count)") // Debugging
                    
                    // Update allCoins atomically
                    DispatchQueue.main.async(flags: .barrier) {
                        self.allCoins = coins
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }.resume()
        }
    }
}
