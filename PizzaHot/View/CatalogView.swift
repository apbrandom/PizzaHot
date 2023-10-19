//
//  CatalogView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct CatalogView: View {
    
    let layout = [GridItem(.adaptive(minimum: screen.width / Constants.LayoutMetrics.sreenRatio))]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Section(Constants.LocalizedStrings.popular) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout) {
                        ForEach(CatalogViewModel.shared.products, id: \.id) { item in
                            NavigationLink {
                                let viewModel = ProductDetailViewModel(product: item)
                                ProductDetailView(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    .padding()
                }
            }
            
            Section(Constants.LocalizedStrings.pizza) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout) {
                        ForEach(CatalogViewModel.shared.products, id: \.id) { item in
                            NavigationLink {
                                let viewModel = ProductDetailViewModel(product: item)
                                ProductDetailView(viewModel: viewModel)
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
        .navigationTitle(Constants.LocalizedStrings.catalog)
    }
}

#Preview {
    CatalogView()
}
