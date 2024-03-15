//
//  ExerciseListView.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import SwiftUI

struct ExerciseListView: View {
    @State private var searchText = ""
    
    var filteredExercises: [Exercise] {
        if searchText.isEmpty {
            return exercisesCatalog // If search text is empty, return all patients
        } else {
            // Filter patients based on search text
            return exercisesCatalog.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack {
            Text("Exercises")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding()
                    
                SearchBar(text: $searchText) // Use the provided SearchBar
                    .padding()
                    
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 360))], spacing: 16) {
                        ForEach(filteredExercises) { exercise in
                            ExerciseCardView(exercise: exercise)
                        }
                    }
                }
                .padding()
        }
        .padding()
    }
}

#Preview {
    ExerciseListView()
}
