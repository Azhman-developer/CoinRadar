# Coin Radar

## Links
### API
[API](https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h)
[API Website](https://www.coingecko.com/en/api)

### Online Tools
[Convert JSON data to Swift Model](https://app.quicktype.io/)
[Testing push notification](https://www.pushtry.com/)

## Descriptions

### APIService
---

#### CoinAPIService
I used Combine framework to download data from CoinGecko API service. This APIService is responsible to bring back all the coins that are requested. I used single Cancellable for the sake of simplicity. 
