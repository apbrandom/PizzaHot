//
//  CatalogViewModel.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 18.10.2023.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var products = [
        Product(id: "1",
                title: "Gourmet Margherita",
                imageUrl: "Not found",
                price: 15,
                description: "самая бомжатская пицца"),
        Product(id: "2",
                title: "Margherita",
                imageUrl: "Not found",
                price: 11,
                description: "самая бомжатская пицца"),
        Product(id: "3",
                title: "Pepperoni",
                imageUrl: "Not found",
                price: 13,
                description: "самая бомжатская пицца"),
        Product(id: "4",
                title: "Hawaiian",
                imageUrl: "Not found",
                price: 13,
                description: "самая бомжатская пицца"),
        Product(id: "10",
                title: "Diablo",
                imageUrl: "Not found",
                price: 15 ,
                description: "самая бомжатская пицца")
    ]
    
    var pizza = [
        Product(id: "5",
                title: "Gourmet Margherita",
                imageUrl: "Not found",
                price: 15,
                description: "самая бомжатская пицца"),
        Product(id: "6",
                title: "Margherita",
                imageUrl: "Not found",
                price: 11,
                description: "самая бомжатская пицца"),
        Product(id: "7",
                title: "Pepperoni",
                imageUrl: "Not found",
                price: 13,
                description: "самая бомжатская пицца"),
        Product(id: "8",
                title: "Hawaiian",
                imageUrl: "Not found",
                price: 13,
                description: "самая бомжатская пицца"),
        Product(id: "9",
                title: "Diablo",
                imageUrl: "Not found",
                price: 15 ,
                description: "самая бомжатская пицца")
    ]
}
