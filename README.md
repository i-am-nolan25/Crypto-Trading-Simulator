# Crypto Trading Simulator Using CoinGecko's Crypto API

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

Allows users to test their trading strategies with no financial consequences by simulating the risk-free trading experience. A user can see real-time cryptocurrencies and build a financial portfolio.

### App Evaluation

- **Category**: Financial Services
- **Mobile**: A user can easily trade cryptos with a mobile app with a secured authenticiation like Face ID.
- **Story**: Helps everyone invest their finance wisely with an easy user-friendly iOS app.
- **Market**: Global Online Trading Platform Market size was valued at USD 9.50 billion in 2022. Transaction fees can be collected for a monetization purpose. Another potential business model could be a subscription.
- **Habit**: Traders has to use the app daily not to miss any critical market updates and trades daily to get an experience.
- **Scope**: V1 would allow users to simply trade cryptos on an app. V2 will expand the market size by letting users trade stocks as well. V3 will add news features, providing users with latest up-to-date news regarding stocks or cryptos. V4 will include in-app trading lessons or short courses offered by top-notch universities or trading firms.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- See real-time crypto updates on a home page
- See detailed information of a particular crypto on a detail page
- Add a certain crypto in a portfolio list

**Optional Nice-to-have Stories**

- Allows users to buy stocks
- Allows users to sell stocks
- Shows users profit and loss of stocks they owned

### 2. Screen Archetypes

- [x] Home Page
- Users can see real-time cryptos

- [x] Portfolio Page
- Users can see their owned cryptos in a portfolio list

- [x] Detailed Crypto Page
- Users can see detailed information of a particular crypto such as Open, High, Low, Market Cap, Price Change, etc.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

- Home Page
- Portfoilio Page

**Flow Navigation** (Screen to Screen)

- [x] Home Page
- => Portfolio Page
- => Info Page  
- => Detailed Crypto Page
  
- [x] Portfolio Page
- => Detailed Crypto Page
- => Edit Portfolio Page

- [x] Detailed Crypto Page
- => None

## Wireframes

![Stock Trading Simulator Paper Prototype](https://github.com/i-am-nolan25/Stock-Trading-Simulator/assets/113712250/fe2013f1-380e-4ffb-9e7a-6e91d33155eb)

### [BONUS] Digital Wireframes & Mockups
<img width="843" alt="Screenshot 2024-04-16 at 9 56 36 PM" src="https://github.com/i-am-nolan25/Stock-Trading-Simulator/assets/113712250/9c538f38-e935-472c-b537-32b32b8d93b5">
<img width="904" alt="Screenshot 2024-04-16 at 9 56 22 PM" src="https://github.com/i-am-nolan25/Stock-Trading-Simulator/assets/113712250/6fc7abb2-91dd-4192-999c-bc413a5f117d">

### [BONUS] Interactive Prototype

https://github.com/i-am-nolan25/Stock-Trading-Simulator/assets/113712250/b06b6d78-4806-4966-b129-df8e4389026f

### Sprint 1 (Week 8)
- Finished up the Figma prototype for a Stock Trading Simulator
- Ended up choosing CoinGecko's Crypto API instead of Stock API
- Working on API for the Home Page

https://github.com/i-am-nolan25/Crypto-Trading-Simulator/assets/113712250/09eeb44c-41a3-420d-ab20-784413695f88

### Sprint 2 (Week 9)
- Used CoinGecko's Crypto API to get data
- Used SwiftUI instead of UIKit
- Built a ```Home Page``` showing top 250 crypto coins in the market
- Added a search bar that can search a particular crypto through the list with a name or symbol
- Built a ```Portfolio Page``` that a user can actually add how much amount of a particular crypto they want to hold
- Built a ```Detailed Crypto Page``` that has a chart demonstration and all the detailed insights about a particular crypto

https://github.com/i-am-nolan25/Crypto-Trading-Simulator/assets/113712250/e880f1d2-7065-443d-8029-4bbd59abc9ab

### Sprint 3 (Week 10)
- Documented detailed information for `Models` used in the project
- Make sure an `API KEY` is safe
- Completed an User Acceptance Testing (UAT) for quality assurance (QA) purposes
 
## Models

### CoinModel

The `CoinModel` struct represents a cryptocurrency and its associated data. It conforms to the `Identifiable` and `Codable` protocols.

#### Properties

- `id`: Unique identifier of the cryptocurrency.
- `symbol`: Symbol of the cryptocurrency.
- `name`: Name of the cryptocurrency.
- `image`: URL string of the cryptocurrency's image.
- `currentPrice`: Current price of the cryptocurrency.
- `marketCap`: Market capitalization of the cryptocurrency.
- `marketCapRank`: Rank of the cryptocurrency by market capitalization.
- `fullyDilutedValuation`: Fully diluted valuation of the cryptocurrency.
- `totalVolume`: Total volume of the cryptocurrency.
- `high24H`: Highest price in the last 24 hours.
- `low24H`: Lowest price in the last 24 hours.
- `priceChange24H`: Price change in the last 24 hours.
- `priceChangePercentage24H`: Percentage price change in the last 24 hours.
- `marketCapChange24H`: Market cap change in the last 24 hours.
- `marketCapChangePercentage24H`: Percentage market cap change in the last 24 hours.
- `circulatingSupply`: Circulating supply of the cryptocurrency.
- `totalSupply`: Total supply of the cryptocurrency.
- `maxSupply`: Maximum supply of the cryptocurrency.
- `ath`: All-time high price of the cryptocurrency.
- `athChangePercentage`: Percentage change from the all-time high price.
- `athDate`: Date of the all-time high price.
- `atl`: All-time low price of the cryptocurrency.
- `atlChangePercentage`: Percentage change from the all-time low price.
- `atlDate`: Date of the all-time low price.
- `lastUpdated`: Date and time when the data was last updated.
- `sparklineIn7D`: Sparkline data representing price changes over the last 7 days.
- `currentHoldings`: The amount of this cryptocurrency currently held.

### CoinDetailModel

The `CoinDetailModel` struct represents detailed information about a cryptocurrency. It conforms to the `Codable` protocol.

#### Properties

- `id`: Unique identifier of the cryptocurrency.
- `symbol`: Symbol of the cryptocurrency.
- `name`: Name of the cryptocurrency.
- `blockTimeInMinutes`: Average time between blocks in minutes.
- `hashingAlgorithm`: The algorithm used for hashing.
- `description`: Detailed description of the cryptocurrency. This property is of type `Description`, which may contain additional information.
- `links`: Links associated with the cryptocurrency. This property is of type `Links`, which may contain relevant URLs such as website and socials.

### MarketDataModel

The `MarketDataModel` struct represents market data related to cryptocurrencies. It conforms to the `Codable` protocol.

#### Properties

- `totalMarketCap`: Total market capitalization for each currency represented as a dictionary where the keys are currency symbols (e.g., "USD", "BTC") and the values are their corresponding total market capitalizations.
- `totalVolume`: Total trading volume for each currency represented as a dictionary where the keys are currency symbols (e.g., "USD", "BTC") and the values are their corresponding total trading volumes.
- `marketCapPercentage`: Market capitalization percentage for each currency represented as a dictionary where the keys are currency symbols (e.g., "USD", "BTC") and the values are their corresponding market capitalization percentages.
- `marketCapChangePercentage24HUsd`: Percentage change in total market capitalization in the last 24 hours, denominated in USD.


### StatisticModel

The `StatisticModel` struct represents a statistic with a title, value, and optional percentage change. It conforms to the `Identifiable` protocol.

#### Properties

- `id`: Unique identifier generated using UUID.
- `title`: Title of the statistic.
- `value`: Value associated with the statistic.
- `percentageChange`: Optional percentage change value.

## Networking

CoinGecko's Crypto API is used in the project. An `API KEY` is not provided for security purposes.

### Acknowledgement
This iOS app is inspired by [Swiftful Thinking](https://www.youtube.com/@SwiftfulThinking)'s "SwiftUI Crypto App with MVVM" course series.
