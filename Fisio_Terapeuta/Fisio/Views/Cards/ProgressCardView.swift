//
//  ProgressCardView.swift
//  Fisio
//
//  Created by Nats Salgado on 14/03/24.
//

import SwiftUI

struct ProgressCardView: View {
    var patient: Patient
    var title: String
    var number: String
    
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
                Text(number)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .padding(.bottom, 5)
                
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ProgressCardView(patient: patients[0], title: "Reps done", number: "10")
}
