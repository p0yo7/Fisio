//
//  HomepageView.swift
//  Fisio
//
//  Created by Nats Salgado on 12/03/24.
//

import SwiftUI


struct HomepageView: View {
    // This page displays the patients of the therapist
    
    var body: some View {
        VStack {
            Text("Welcome to FISIO")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding(.top, 100)
                .padding(.bottom, 1)
                .italic()
            
            Text("Help on every step of the way")
                .font(.system(size: 25))
                .italic()
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
        }
        .accentColor(.black)
    }
}

#Preview {
    HomepageView()
}
