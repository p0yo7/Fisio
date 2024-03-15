//
//  SearchBarView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
                
            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.secondary)
                    .padding(.trailing, 10)
            }
        }
    }
}


