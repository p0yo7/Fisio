//
//  PatientCardView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct PatientCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var patient : Patient

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color.purple]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
                .opacity(0.4)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(10)

            VStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .padding()
                    
                Text(patient.name + " " + patient.lastName)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
            }
            .foregroundColor(colorScheme == .dark ? .white : .black)
        }
            .padding()
    }
}


#Preview {
    PatientCardView(patient: patients[0])
}
