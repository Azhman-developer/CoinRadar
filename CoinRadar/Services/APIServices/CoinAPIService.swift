//
//  CoinAPIService.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 2/2/22.
//

import Foundation
import Combine

class CoinAPIService: ObservableObject{
    @Published var coins: [Coin] = []
    
    var subscription: AnyCancellable?
    
    init(){
        
        downloadCoins()
    }
    
    
    func downloadCoins(){
        guard let url = URL(string: SharedResources.instance.coinAPIURL)
        else {
            print("URL for COINS is Not Valid")
            return
        }
        
        
        subscription =  NetwoManager.shared.getData(from: url)
            .decode(type: [Coin].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetwoManager.shared.handleCompletion, receiveValue: { [weak self] returnedCoins in
                guard let self = self else {return}
                self.coins     = returnedCoins
                self.subscription?.cancel()
            })
    }
    
    
}
