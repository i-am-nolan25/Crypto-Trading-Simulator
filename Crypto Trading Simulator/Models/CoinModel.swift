//
//  CoinModel.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/22/24.
//

// CoinGecko API info
/*
 URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&X-Cg-Pro-Api-Key=CG-hGKGJHK91UmrTEngkny1S4nx
 
 JSON Response:
 {
         "id": "bitcoin",
         "symbol": "btc",
         "name": "Bitcoin",
         "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
         "current_price": 66902,
         "market_cap": 1314409098890,
         "market_cap_rank": 1,
         "fully_diluted_valuation": 1401942019226,
         "total_volume": 27894684047,
         "high_24h": 67208,
         "low_24h": 64565,
         "price_change_24h": 2059.61,
         "price_change_percentage_24h": 3.17633,
         "market_cap_change_24h": 34478678724,
         "market_cap_change_percentage_24h": 2.69379,
         "circulating_supply": 19688825.0,
         "total_supply": 21000000.0,
         "max_supply": 21000000.0,
         "ath": 73738,
         "ath_change_percentage": -9.38949,
         "ath_date": "2024-03-14T07:10:36.635Z",
         "atl": 67.81,
         "atl_change_percentage": 98433.11322,
         "atl_date": "2013-07-06T00:00:00.000Z",
         "roi": null,
         "last_updated": "2024-04-23T00:35:13.202Z",
         "sparkline_in_7d": {
             "price": [
                 63409.24311425688,
                 63152.569049393926,
                 63189.161277379324,
                 63428.73276073059,
                 62946.303755990186,
                 62432.95891572347,
                 62881.3508541874,
                 63202.81647613552,
                 63560.38164223305,
                 63279.67577666857,
                 63261.458360413904,
                 62609.16958141059,
                 63088.07438441403,
                 63005.1644696384,
                 62320.97069186869,
                 62135.486208511335,
                 61922.02549496097,
                 62728.21923573881,
                 62577.39136548258,
                 62991.35291842838,
                 62744.284827997675,
                 63022.4241985665,
                 63937.6008505447,
                 63812.81475679645,
                 63813.80057977799,
                 64007.73493744406,
                 64046.1904747205,
                 63865.66274385354,
                 63885.6879080322,
                 64238.95648976054,
                 63930.254417404554,
                 63882.81995537009,
                 63534.52386534954,
                 63350.62513568913,
                 63342.30473633799,
                 62886.057735517745,
                 62769.01678762066,
                 62319.04812820075,
                 62617.82419524447,
                 61235.831716984474,
                 60525.743741912935,
                 60181.66922975932,
                 61317.301889421,
                 61469.738301143654,
                 61124.5201007595,
                 60871.09535301844,
                 61309.12225744787,
                 61657.57943716404,
                 61271.93484646608,
                 61530.50432443966,
                 61465.39383324107,
                 61650.50672302188,
                 62007.59768565362,
                 61643.17166867069,
                 61263.04132815015,
                 61048.751768850336,
                 61244.924019478625,
                 61346.94257905179,
                 61647.656803679194,
                 61688.711610830826,
                 62641.89298036523,
                 62143.345212126136,
                 62674.94787799203,
                 63537.94287141911,
                 63641.49575562413,
                 63566.21788008273,
                 62827.698817559525,
                 63118.38992578757,
                 63561.271284468596,
                 63473.796819783005,
                 63702.6263035617,
                 63524.558683375275,
                 63517.289856392184,
                 62759.9607892424,
                 61055.95687671645,
                 61100.402174505,
                 61765.99096061795,
                 62486.375221617476,
                 62066.12263082017,
                 64576.76501078571,
                 64587.66164663983,
                 64620.55910455225,
                 64846.22305401333,
                 64734.87121158928,
                 64972.34836570562,
                 65079.82263989656,
                 64870.43949304431,
                 64479.765451855106,
                 64471.52983123631,
                 64259.103690300995,
                 64696.12129408346,
                 64188.22689560364,
                 64308.30282952848,
                 64027.023182702746,
                 64383.47711672337,
                 64112.51345083991,
                 63840.68860508889,
                 63606.696326990204,
                 63708.833238325686,
                 63862.12480739731,
                 63968.0631270988,
                 64102.57475571032,
                 64259.61134777376,
                 64088.98827307739,
                 63975.74554649415,
                 63724.073345885605,
                 63712.23861085204,
                 63595.28911868955,
                 63720.77742016488,
                 63851.47472799511,
                 63912.555831570324,
                 63979.049076926065,
                 64808.0413445874,
                 64764.828225301055,
                 65230.14679487167,
                 65011.84960433182,
                 64936.27741888656,
                 64735.622959073444,
                 64717.52552512009,
                 64622.874309758576,
                 64975.76008691977,
                 64783.72839989877,
                 64979.69844417978,
                 65335.025560536145,
                 65205.69247263208,
                 65121.759602721424,
                 65074.07506231428,
                 65080.62413018502,
                 65183.28487409905,
                 64958.351065800445,
                 64919.68834279286,
                 65000.95013336604,
                 65296.34612807932,
                 65041.897239267266,
                 64889.9275795219,
                 64911.06410587813,
                 65068.28472519487,
                 64603.93315160502,
                 64840.596473468206,
                 64761.83230903283,
                 64561.17486902658,
                 64665.919169858425,
                 64734.09359446595,
                 65037.483119496384,
                 64918.78670332484,
                 64894.70962965232,
                 64694.72610495621,
                 64772.28574069939,
                 65854.88294489925,
                 65741.63708431351,
                 66504.70403000261,
                 66343.54643221646,
                 66053.00008868682,
                 65995.1504515962,
                 65924.48739150951,
                 66085.36893814267,
                 65903.2313928471,
                 66048.61211663991,
                 66190.79415333882,
                 66007.04786229541,
                 66010.56841306934,
                 66181.50493480705,
                 66617.89026941896,
                 66325.46619812233,
                 66566.99577119658,
                 66492.40079409441,
                 66565.69942765807,
                 67067.07426890385
             ]
         },
         "price_change_percentage_24h_in_currency": 3.176327014261784
     }
 
 */

import Foundation

// MARK: - Welcome
struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
//    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
            case id, symbol, name, image
            case currentPrice = "current_price"
            case marketCap = "market_cap"
            case marketCapRank = "market_cap_rank"
            case fullyDilutedValuation = "fully_diluted_valuation"
            case totalVolume = "total_volume"
            case high24H = "high_24h"
            case low24H = "low_24h"
            case priceChange24H = "price_change_24h"
            case priceChangePercentage24H = "price_change_percentage_24h"
            case marketCapChange24H = "market_cap_change_24h"
            case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
            case circulatingSupply = "circulating_supply"
            case totalSupply = "total_supply"
            case maxSupply = "max_supply"
            case ath
            case athChangePercentage = "ath_change_percentage"
            case athDate = "ath_date"
            case atl
            case atlChangePercentage = "atl_change_percentage"
            case atlDate = "atl_date"
            case lastUpdated = "last_updated"
            case sparklineIn7D = "sparkline_in_7d"
//            case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
            case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
            return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, /*priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency,*/ currentHoldings: amount)
        }
        
        var currentHoldingsValue: Double {
            return (currentHoldings ?? 0) * currentPrice
        }
            
        var rank: Int {
            return Int(marketCapRank ?? 0)
        }
    }

    struct SparklineIn7D: Codable {
        let price: [Double]?
    }
