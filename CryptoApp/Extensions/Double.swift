//
//  Double.swift
//  CryptoApp
//
//  Created by Bariev Daniil on 07.07.2024.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var percentFormatter: NumberFormatter { 
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .percent
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentString() -> String {
        guard let numberAsString = percentFormatter.string(for: self / 100) else { return "" }
        return numberAsString
    }
}
