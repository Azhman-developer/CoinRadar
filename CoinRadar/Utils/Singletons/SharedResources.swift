//
//  Resources.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 2/2/22.
//

import Foundation


//TODO: - Refactor this
/*
 One thing that you can do is to limit the access to this shared resources through the relative extension
 For example put the core data portfolio name in an extension of CoreData
 */
class SharedResources{
    
    static let instance = SharedResources()
    
    private init(){}
    
    let coinAPIURL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h"
    
    let marketAPIURL = "https://api.coingecko.com/api/v3/global"
    
    let coinDetailAPIURL = " https://api.coingecko.com/api/v3/coins/bitcoin?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false"
    
   // let CDPortfolioName = "PortfolioContainer"
}


