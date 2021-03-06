//
//  StatisticView.swift
//  CoinRadar
//
//  Created by Amirreza Zarepour on 2/3/22.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: Statistic
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
           
            HStack(spacing: 0){
                
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180 ))
        
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ?
                             Color.theme.green : Color.theme.red
            )
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
            
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            HStack{
            StatisticView(stat: dev.statMarketCap)
               
            
            StatisticView(stat: dev.statTotalVolume)
               
            
            StatisticView(stat: dev.statPortfolioNegative)
                
            
            }
            .previewLayout(.sizeThatFits)
            
            HStack{
            StatisticView(stat: dev.statMarketCap)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
            StatisticView(stat: dev.statTotalVolume)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
            StatisticView(stat: dev.statPortfolioNegative)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            }
            .previewLayout(.sizeThatFits)
        }
    }
}
