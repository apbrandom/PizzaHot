//
//  ProductDetailView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 18.10.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product: Product
    
    var body: some View {
        Text("\(product.title)")
    }
}

#Preview {
    ProductDetailView(product: Product(id: "1",
                                       title: "Gourmet Margherita",
                                       imageUrl: "Not found",
                                       price: 15,
                                       description: "самая бомжатская пицца"))
}
