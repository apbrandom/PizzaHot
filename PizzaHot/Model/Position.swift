//
//  Position.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 19.10.2023.
//

import Foundation

struct Position {
    var id: String
    var product: Product
    var count: Int
    
    var cost: Double {
        return product.price * Double(self.count)
    }
}
