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

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
