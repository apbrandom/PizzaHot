//
//  ProductDetailViewModel.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 18.10.2023.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    enum Size: String, CaseIterable  {
        case small
        case medium
        case big
    }
    
    @Published var product: Product 
    @Published var size: Size
    @Published var count: Int
    
    init(product: Product) {
        self.product = product
        self.size = .medium
        self.count = 0
    }
    
    func getPrice(size: String) -> Double {
        switch self.size {
            
        case .small:
            return product.price
        case .medium:
            return product.price * 1.25
        case .big:
            return product.price * 1.5
        }
    }
}
