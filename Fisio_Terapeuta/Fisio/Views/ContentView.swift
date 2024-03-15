//
//  ContentView.swift
//  Fisio
//
//  Created by Nats Salgado on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            LoginView()
            NavigationLink(destination: CreateAccountView()) {
            }
        }
    }
}

#Preview {
    ContentView()
}
