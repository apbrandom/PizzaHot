//
//  ProductCell.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct ProductCell: View {
    
    let product: Product
    
    var body: some View {
        VStack {
            Image("PizzaM")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.4)
                .clipped()
                .clipShape(.rect(cornerRadius: 16))
                .padding(.top, 10)
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                
                Spacer()
                Text("\(Tools.formatPrice(product.price)) $")
                    .font(.custom("AvenirNext-bold", size: 12 ))
            }
            .padding(.horizontal, 16)
        }
        .frame(width: screen.width * 0.45, height: screen.height * 0.25)
        .background(.white)
        .clipShape(.rect(cornerRadius: 16))
        .shadow(radius: 4)

    }
}

#Preview {
    ProductCell(product: Product(id: "1",
                                 title: "Маргарита Гурме",
                                 imageUrl: "Not found",
                                 price: 4.5,
                                 description: "самая бомжатская пицца"))
}
