//
//  SignInView.swift
//  Fisio
//
//  Created by Nats Salgado on 11/03/24.
//

import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 15, content: {
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Text("Login")
                .font(.system(size: 40))
                .fontWeight(.heavy)
            
            Text("Please sign in to continue")
                .font(.system(size: 25))
                .fontWeight(.regular)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25) {
                TextFieldView(sfIcon: "person", hint: "Email ID", value: $username)
                
                TextFieldView(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
            }
            .padding(.top, 20)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        })
        .padding()
    }
}

#Preview {
    SignInView()
}
