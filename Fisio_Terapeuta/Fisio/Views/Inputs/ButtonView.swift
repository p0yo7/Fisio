//
//  ButtonView.swift
//  Fisio
//
//  Created by Nats Salgado on 11/03/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick, label: {
            HStack(spacing: 15) {
                Text(title)
            }
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 35)
            .background(.linearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom), in: .capsule)
        })
    }
}

