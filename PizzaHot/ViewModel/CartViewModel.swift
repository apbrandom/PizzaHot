//
//  CartViewModel.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 19.10.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
    static let shared = CartViewModel()
    
    private init() { }
    
    @Published var positions = [Position]()
    
    var cost: Double {
        var sum = 0.0
        
        for position in positions {
            sum += position.cost
        }
        return sum
    }
    
    func addPosition(_ postion: Position) {
        self.positions.append(postion)
    }
}
