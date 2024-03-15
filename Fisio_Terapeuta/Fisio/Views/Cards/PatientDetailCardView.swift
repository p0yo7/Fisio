//
//  PatientDetailCardView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct PatientDetailCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var name: String
    var imageName: String

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.white]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
            .opacity(0.4)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .cornerRadius(10)

            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .padding()
                    .colorInvert()
                    .blendMode(colorScheme == .dark ? .normal : .difference)
                
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .padding() // Add padding here
        }
        .padding() // Add padding here if you want to give additional space outside the card
    }
}



#Preview {
    PatientDetailCardView(name: "Wii", imageName: "exercise")
}
