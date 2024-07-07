//
//  TomMoversItemView.swift
//  CryptoApp
//
//  Created by Bariev Daniil on 07.07.2024.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // Иконка
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // Информация о монете
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // Изменения цены монеты
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//#Preview {
//    TopMoversItemView()
//}
