//
//  ExerciseModel.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import Foundation
import SwiftUI

struct Exercise : Identifiable, Codable, Hashable {
    var id = UUID()
    var name : String
    var type : String
    var description : String
    // var instructions : String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

let exercisesCatalog: [Exercise] = [
    Exercise(name: "Push-ups", type: "Strength", description: "Push-ups are a great bodyweight exercise for building upper body strength.", imageName: "exercise"),
    Exercise(name: "Squats", type: "Strength", description: "Squats are effective for strengthening the lower body muscles including quadriceps, hamstrings, and glutes.", imageName: "exercise"),
    Exercise(name: "Running", type: "Cardio", description: "Running is a cardiovascular exercise that helps improve endurance and burn calories.", imageName: "exercise"),
    Exercise(name: "Yoga", type: "Flexibility", description: "Yoga involves a series of poses and stretches to improve flexibility, balance, and relaxation.", imageName: "exercise"),
    Exercise(name: "Plank", type: "Core", description: "The plank is a core strengthening exercise that helps improve abdominal and back muscles.", imageName: "exercise")
]


let exercisesPatient: [Exercise] = [
    Exercise(name: "Bicep Curls", type: "Strength", description: "Bicep curls target the biceps muscles and are commonly performed with dumbbells or barbells.", imageName: "exercise"),
    Exercise(name: "Jumping Jacks", type: "Cardio", description: "Jumping jacks are a simple yet effective cardiovascular exercise that also engages various muscles throughout the body.", imageName: "exercise"),
    Exercise(name: "Leg Raises", type: "Core", description: "Leg raises primarily target the abdominal muscles and help strengthen the core.", imageName: "exercise")
]
