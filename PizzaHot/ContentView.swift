//
//  ContentView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Authorization")
                .padding()
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(.alphaWhite)
                .foregroundStyle(.darkBrown)
                .clipShape(.capsule)
                .padding(.vertical, 40)
            
            VStack(spacing: 10) {
                TextField("Enter email", text: $email)
                    .padding()
                    .background(.alphaWhite)
                    .clipShape(.buttonBorder)
                    .padding()
                
                SecureField("Enter password", text: $password)
                    .padding()
                    .background(.alphaWhite)
                    .clipShape(.buttonBorder)
                    .padding([.horizontal, .bottom])
                
                Button("Login") {
                    print("Login pressed")
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing))
                .font(.title3.bold())
                .foregroundStyle(.darkBrown)
                .clipShape(.buttonBorder)
                .padding()
                
                Button("Not with us yet?") {
                    print("register button pressed")
                }
                .padding()
            }
            .background(.alphaWhite)
            .padding()
            .clipShape(.buttonBorder)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("backgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview {
    ContentView()
}
