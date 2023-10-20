//
//  PositionCell.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 20.10.2023.
//

import SwiftUI

struct PositionCell: View {
    
    let position: Position
    
    var body: some View {
        HStack {
            Text(position.product.title)
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count) pcs")
            Text(Tools.formatPrice(position.cost))
                .frame(width: 85, alignment: .trailing)
        }.padding(.horizontal)
    }
}

#Preview {
    PositionCell(
        position: Position(
            id: UUID().uuidString,
            product: Product(
                id: UUID().uuidString,
                title: "Gourmet Margherita",
                imageUrl: "PizzaM",
                price: 15,
                description: "самая бомжатская пицца"),
            count: 3))
}
