//
//  RoutineView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct RoutineView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var sets = 1
    var patient: Patient
    
    var body: some View {
        VStack {
            Text(patient.name + " " + patient.lastName + "'s Routine")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding()
            
            HStack {
                TextButtonView(title: "-") {
                    sets -= 1
                }
                .padding()
                .font(.system(size: 40))
                
                Text("Sets: \(sets)")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                
                TextButtonView(title: "+") {
                    sets += 1
                }
                .padding()
                .font(.system(size: 40))
            }
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 800))], spacing: 16) {
                    ForEach(patient.routine.exercises) { exercise in
                        RoutineCardView(exercise: exercise)
                    }
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    RoutineView(patient: patients[0])
}
