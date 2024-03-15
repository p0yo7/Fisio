//
//  ProgressView.swift
//  Fisio
//
//  Created by Nats Salgado on 14/03/24.
//

import SwiftUI

struct ProgressView: View {
    @Environment(\.colorScheme) var colorScheme
    var patient: Patient
    
    var body: some View {
        VStack {
            Text(patient.name + " " + patient.lastName + "'s Progress")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding()
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 400))], spacing: 16) {
                ProgressCardView(patient: patient, title: "Total sets done", number: "14")
                ProgressCardView(patient: patient, title: "Total exercises done", number: "68")
                ProgressCardView(patient: patient, title: "Current sets done", number: "3/8")
                ProgressCardView(patient: patient, title: "Current exercises done", number: "15/39")
                

            }
        }
    }
}

#Preview {
    ProgressView(patient: patients[0])
}
