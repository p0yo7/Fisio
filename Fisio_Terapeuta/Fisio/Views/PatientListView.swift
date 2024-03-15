//
//  PatientListView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct PatientListView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var searchText = ""
    
    var filteredPatients: [Patient] {
        if searchText.isEmpty {
            return patients // If search text is empty, return all patients
        } else {
            // Filter patients based on search text
            return patients.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    let gridItemLayout = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                VStack {
                    Text("Welcome to FISIO")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .padding(.top, 100)
                        .padding(.bottom, 1)
                    
                    Text("Help on every step of the way")
                        .font(.system(size: 25))
                        .italic()
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                    
                    SearchBar(text: $searchText) // Use the provided SearchBar
                        .padding()
                    
                    ScrollView {
                        LazyVGrid(columns: gridItemLayout, spacing: 16) {
                            ForEach(filteredPatients) { patient in
                                NavigationLink(destination: PatientDetailView(patient: patient)) {
                                    PatientCardView(patient: patient)
                                        .frame(minWidth: 300, minHeight: 300) // Set minimum size
                                }
                            }
                        }
                        .padding()
                    }
                    
                }
            }
            //.accentColor(colorScheme == .dark ? .white : .black)
            .padding()
        }
    }
}



#Preview {
    PatientListView()
}
