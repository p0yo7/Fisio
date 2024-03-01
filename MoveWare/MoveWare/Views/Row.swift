//
//  Row.swift
//  Mock
//
//  Created by Nats Salgado on 26/02/24.
//

import SwiftUI

struct Row: View {
    var type : Type
    
    var body: some View {
        VStack{
            type.image
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .frame(width: 300)
                .overlay(alignment: .topLeading, content: {
                    Text(type.name)
                        .foregroundColor(.black)
                        .font(.title)
                        .padding([.top, .leading], 10.0)
                })
                .padding()
        }
    }
}

#Preview {
    Row(type: types[0])
}
