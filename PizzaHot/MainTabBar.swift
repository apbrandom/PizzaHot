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
            CatalogView()
                .tabItem {
                    Image(systemName: "menucard")
                    Text("Catalog")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainTabBar()
}
