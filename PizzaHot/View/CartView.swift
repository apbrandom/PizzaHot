//
//  CartView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 17.10.2023.
//

import SwiftUI

struct CartView: View {
    
    var viewModel: CartViewModel
    
    var body: some View {
        Text("Cart Veiw")
    }
}

#Preview {
    CartView(viewModel: CartViewModel())
}
