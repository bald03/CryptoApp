//
//  HomeView.swift
//  CryptoApp
//
//  Created by Bariev Daniil on 07.07.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Топ по изменению монет
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // Все монеты
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
