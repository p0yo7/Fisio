//
//  CircleButtonView.swift
//  Fisio
//
//  Created by Nats Salgado on 14/03/24.
//

import SwiftUI

struct CircleButtonView: View {
    @Environment(\.colorScheme) var colorScheme
    var title: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick, label: {
            HStack(spacing: 15) {
                Text(title)
                    .font(.system(size: 30))
            }
            .fontWeight(.bold)
            .foregroundColor(colorScheme == .dark ? .black : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 35)
            .background(colorScheme == .dark ? .white : .black, in: .circle)
        })
    }
}

#Preview {
    RoutineCardView(exercise: exercisesPatient[0])
}
