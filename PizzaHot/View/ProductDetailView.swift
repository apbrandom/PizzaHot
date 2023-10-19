//
//  ProductDetailView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 18.10.2023.
//

import SwiftUI

struct ProductDetailView: View {
        
    @ObservedObject var viewModel: ProductDetailViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image(.pizzaM)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: Constants.LayoutMetrics.detailImageHeight)
                
                HStack {
                    Text(viewModel.product.title)
                        .font(.title2.bold())
                    
                    Spacer()
                    Text(Tools.formatPrice(viewModel.getPrice(size: viewModel.size.rawValue)))
                        .font(.title2 )
                }
                .padding(.horizontal)
                
                Picker(Constants.LocalizedStrings.pizzaSize, selection: $viewModel.size) {
                    ForEach(ProductDetailViewModel.Size.allCases, id: \.self) { size in
                        Text(size.rawValue.capitalized).tag(size)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                HStack {
                    Stepper("Quantity", value: $viewModel.count, in: 1...10)
                    Text("\(viewModel.count)")
                        .padding(.horizontal)
                     
                }.padding(.horizontal)
                
                Text(viewModel.product.description)
                    .padding(.horizontal)
                
            }
            
            Button(action: {
                print("add to cart pressed")
            }, label: {
                Text("Add to cart")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing))
                    .font(.title3.bold())
                    .foregroundStyle(.darkBrown)
                    .clipShape(.buttonBorder)
                    .contentShape(Rectangle())
                    .padding()
            })
            Spacer()
        }
    }
}

#Preview {
    ProductDetailView(
        viewModel: ProductDetailViewModel(
            product: Product(
                id: "1",
                title: "Gourmet Margherita",
                imageUrl: "Not found",
                price: 15,
                description: "The most mind-blowing pizza you'll ever taste! Packed with flavors that will knock your socks off, this pizza is a culinary experience you don't want to miss.")))
}

