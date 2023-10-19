//
//  MainTabBar.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct MainTabBar: View {
    
    var body: some View {
        
        TabView {
            catalogTab
            cartTab
            profileTab
        }
    }
    
    private var catalogTab: some View {
        NavigationView {
            CatalogView()
        }
        .tabItem {
            Image(systemName: Tab.catalog.iconName)
            Text(Tab.catalog.title)
        }
    }
    
    private var cartTab: some View {
        CartView(viewModel: CartViewModel())
            .tabItem {
                Image(systemName: Tab.cart.iconName)
                Text(Tab.cart.title)
            }
    }
    
    private var profileTab: some View {
        ProfileView()
            .tabItem {
                Image(systemName: Tab.profile.iconName)
                Text(Tab.profile.title)
            }
    }
}

#Preview {
    MainTabBar()
}
