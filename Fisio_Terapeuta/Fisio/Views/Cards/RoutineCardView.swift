//
//  RoutineCardView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct RoutineCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var exercise : Exercise
    @State private var repetitions = 3
    
    var body: some View {
        HStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.white, Color.purple]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .opacity(0.4)
                .frame(width: 700, height: 250)
                .cornerRadius(10)
                
                HStack {
                    VStack {
                        Text(exercise.name)
                            .font(.system(size: 30))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(width: 400)
                            .padding(.bottom, 5)
                           
                        Text(exercise.description)
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .frame(width: 400)
                            .padding()
                        
                    }
                    ZStack {
                        LinearGradient(
                            gradient: Gradient(colors: [Color.white, Color.blue]),
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                        .opacity(0.4)
                        .frame(width: 260, height: 250)
                        .cornerRadius(10)
                        
                        VStack {
                            Text("Repetitions:")
                                .font(.system(size: 25))
                                .fontWeight(.semibold)
                                .frame(width: 200)
                            
                            HStack {
                                TextButtonView(title: "-") {
                                    repetitions -= 1
                                }
                                .font(.system(size: 30))
                                .padding()
                                
                                
                                Text("\(repetitions)")
                                    .font(.system(size: 50))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    
                                
                                TextButtonView(title: "+") {
                                    repetitions += 1
                                }
                                .font(.system(size: 30))
                                .padding()
                                
                                
                                //.foregroundColor(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }
                }
            }
            .padding()
           
        } // for hstack
    }
}



#Preview {
    RoutineCardView(exercise: exercisesPatient[0])
}
