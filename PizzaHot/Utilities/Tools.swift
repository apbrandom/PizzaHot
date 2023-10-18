//
//  Tool.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//
import SwiftUI

let screen = UIScreen.main.bounds

struct Tools {
    
  static func formatPrice(_ price: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2 
        return formatter.string(from: NSNumber(value: price)) ?? "\(price)"
    }
}
