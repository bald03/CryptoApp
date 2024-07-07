//
//  TomMoversItemView.swift
//  CryptoApp
//
//  Created by Bariev Daniil on 07.07.2024.
//

import SwiftUI

struct TomMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Иконка
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // Информация о монете
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                    
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // Изменения цены монеты
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
            
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

#Preview {
    TomMoversItemView()
}
