//
//  ExerciseCardView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct ExerciseCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var exercise : Exercise

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color.blue]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
                .opacity(0.4)
                .frame(width: 350, height: 350)
                .cornerRadius(10)

            VStack {
                CircleButtonView(title: "+") {
                }
                .font(.system(size: 30))
                .frame(width: 350, height: 0)
                .padding(.leading, 240)
                .offset(y: 35)
                
                Image("exercise")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .padding()
                    .colorInvert()
                    .blendMode(colorScheme == .dark ? .normal : .difference)
                
                Text(exercise.name)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 5)
                
                Text("Type: " + exercise.type)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.bottom, 5)
                
                Text(exercise.description)
                    .padding(.bottom, 5)
                    .frame(width: 250)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    
            }
        }
        .padding()
    }
}

#Preview {
    ExerciseCardView(exercise: exercisesCatalog[0])
}
