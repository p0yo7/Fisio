//
//  PatientDetailView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct PatientDetailView: View {
    @Environment(\.colorScheme) var colorScheme
    var patient: Patient
    
    
    var body: some View {
        VStack {
            
            NavigationStack {
                ScrollView {
                    VStack {
                        Spacer()
                        
                        Text("Patient: " + patient.name + " " + patient.lastName)
                            .font(.system(size: 40))
                            .fontWeight(.heavy)
                            .padding()
                        
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 650))], spacing: 16) {
                                NavigationLink(destination: ExerciseListView()) {
                                    PatientDetailCardView(name: "Exercise Catalog", imageName: "exercise")
                                }
                                
                                NavigationLink(destination: RoutineView(patient: patient)) {
                                    PatientDetailCardView(name: "Routine", imageName: "routine")
                                }
                                
                                NavigationLink(destination: ProgressView(patient: patient)) {
                                    PatientDetailCardView(name: "Progress", imageName: "stats")
                                }
                            }
                        
                        .padding()
                        
                        Spacer()
                    }
                }
            }
            //.accentColor(colorScheme == .dark ? .white : .black)
        }
        .padding()
    }
}


#Preview {
    PatientDetailView(patient: patients[0])
}
