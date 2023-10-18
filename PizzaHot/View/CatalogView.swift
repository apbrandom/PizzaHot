//
//  CatalogView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct CatalogView: View {
    
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            Section("Popular") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout) {
                        ForEach(CatalogViewModel.shared.products, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    .padding()
                }
            }
            
            Section("Pizza") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout) {
                        ForEach(CatalogViewModel.shared.products, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Catalog")
    }
}

#Preview {
    CatalogView()
}
