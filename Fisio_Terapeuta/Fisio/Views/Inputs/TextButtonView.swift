//
//  TextButtonView.swift
//  Fisio
//
//  Created by Nats Salgado on 14/03/24.
//

import SwiftUI

struct TextButtonView: View {
    @Environment(\.colorScheme) var colorScheme
    var title: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick, label: {
            HStack(spacing: 15) {
                Text(title)
            }
            .fontWeight(.bold)
            .foregroundColor(colorScheme == .dark ? .white : .black)
        })
    }
}

