//
//  CreateAccountView.swift
//  Fisio
//
//  Created by Nats Salgado on 12/03/24.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var cellphone: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .bottom, endPoint: .top) // Gradient background
                .opacity(0.4)
                .ignoresSafeArea(.all)
            
            VStack() {
                Spacer()
                
                Text("Create account ")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Text("Please fill in with your information")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundStyle(.gray)
                    .padding(.top, -30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                VStack(spacing: 25) {
                    HStack {
                        TextFieldView(sfIcon: "person", hint: "Name", value: $name)
                        
                        TextFieldView(sfIcon: "person", hint: "Last name", value: $lastName)
                    }
                    .padding(10)
                    
                    HStack {
                        TextFieldView(sfIcon: "envelope", hint: "Email", value: $email)
                        
                        TextFieldView(sfIcon: "phone", hint: "Phone number", value: $cellphone)
                        
                    }
                    .padding(10)
                    
                    HStack {
                        TextFieldView(sfIcon: "person", hint: "Username", value: $username)
                        
                        TextFieldView(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
                    }
                    .padding(10)
                    
                    ButtonView(title: "Sign up") {
                    }
                    .frame(width: 500)
                    .font(.system(size: 25))
                    .padding(.top, 50)
                    
                }
                
                .padding(.top, 20)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
    }
}

#Preview {
    CreateAccountView()
}
