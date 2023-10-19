//
//  Tab.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 19.10.2023.
//

import Foundation

enum Tab {
    case catalog, cart, profile
    
    var title: String {
        switch self {
        case .catalog: return "Catalog"
        case .cart: return "Cart"
        case .profile: return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .catalog: return "menucard"
        case .cart: return "cart"
        case .profile: return "person.circle"
        }
    }
}
