//
//  ContentView.swift
//  PizzaHot
//
//  Created by Vadim Vinogradov on 16.10.2023.
//

import SwiftUI

struct AuthView: View {
    
    @State var isAuth = true
    @State var isTabViewShow = false
    
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text(isAuth ? "Authorization" : "Registration")
                .padding()
                .padding(.horizontal, isAuth ? 30 : 40)
                .font(.title2.bold())
                .background(.alphaWhite)
                .foregroundStyle(.darkBrown)
                .clipShape(.capsule)
                .padding(.vertical, isAuth ? 40 : 20)
            
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
                
                if !isAuth {
                    SecureField("Repeat password", text: $confirmPassword)
                        .padding()
                        .background(.alphaWhite)
                        .clipShape(.buttonBorder)
                        .padding([.horizontal, .bottom])
                }
                
                Button(isAuth ? "Login" : "Create account") {
                    if isAuth {
                        print("Login pressed")
                        isTabViewShow.toggle()
                    } else {
                        print("Created pressed")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        isAuth.toggle()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing))
                .font(.title3.bold())
                .foregroundStyle(.darkBrown)
                .clipShape(.buttonBorder)
                .contentShape(Rectangle())
                .padding()
                
                Button("Not with us yet?") {
                    isAuth.toggle()
                    print("Not with us yet pressed")
                }
                .padding()
            }
            .padding(.top, 40)
            .background(.alphaWhite)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .padding(isAuth ? 30 : 5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("backgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .blur(radius: isAuth ? 0 : 6)
        )
        .animation(.easeInOut, value: isAuth)
        .fullScreenCover(isPresented: $isTabViewShow, content: {
            MainTabBar()
        })
    }
}

#Preview {
    AuthView()
}
