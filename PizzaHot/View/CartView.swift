//
//  CartView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel: CartViewModel
    
    var body: some View {
        
        VStack {
            List(viewModel.positions) { position in
                PositionCell(position: position)
                    .swipeActions {
                        Button {
                            viewModel.positions.removeAll { pos in
                                pos.id == position.id
                            }
                        } label: {
                            Text("Delete")
                        }
                        .tint(.red)
                    }
            }
            .listStyle(.plain)
            .navigationTitle(Constants.LocalizedStrings.chart)
            
            
            HStack {
                Text("Total")
                    .fontWeight(.bold)
                Spacer()
                Text(Tools.formatPrice(viewModel.cost))
                    .fontWeight(.bold)
            }.padding()
            
            
            HStack(spacing: 24) {
                
                Button {
                    print("Cancel pressed")
                } label: {
                    Text("Cancel")
                        .padding()
                        .font(.body.bold())
                        .foregroundStyle(.white)
                        .background(.red)
                        .clipShape(.capsule)
                }
                
                Button {
                    print("Order pressed")
                } label: {
                    Text("Order")
                        .padding()
                        .font(.body.bold())
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .clipShape(.capsule)
                    
                }
            }.padding()
        }
    }
}

#Preview {
    CartView(viewModel: CartViewModel.shared)
}
