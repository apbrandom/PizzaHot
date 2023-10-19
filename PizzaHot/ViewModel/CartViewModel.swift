//
//  CartViewModel.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 19.10.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var position = [Position]()
    
    func addPosition(_ postion: Position) {
        self.position.append(postion)
    }
}
