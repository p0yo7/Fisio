//
//  LoginView.swift
//  Fisio
//
//  Created by Nats Salgado on 11/03/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom) // Gradient background
                .opacity(0.4)
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 15, content: {
                Spacer(minLength: 0)
                
                Text("Login")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                
                Text("Please sign in to continue")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundStyle(.gray)
                    .padding(.top, -5)
                
                VStack(spacing: 25) {
                    TextFieldView(sfIcon: "person", hint: "Username", value: $username)
                        .frame(width: 500)
                    
                    TextFieldView(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
                        .frame(width: 500)
                    
                    ButtonView(title: "Login") {
                    }
                    .frame(width: 500)
                    .font(.system(size: 25))
                    .padding(.top, 50)
                    
                    HStack {
                        Text("Don't have an account yet? ")
                            .foregroundStyle(.gray)
                            .font(.system(size: 20))
                        
                        NavigationLink {
                            CreateAccountView()
                        } label: {
                            Text("Sign up")
                        }
                        .font(.system(size: 20))
                                            
                    }
                }
                
                .padding(.top, 20)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            })
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
