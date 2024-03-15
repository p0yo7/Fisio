//
//  RoutineModel.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import Foundation

struct Routine : Identifiable, Codable, Hashable {
    var id = UUID()
    var name : String
    var exercises : [Exercise]
}

let fakeRoutine: Routine = Routine(name: "Morning Workout", exercises: exercisesPatient)
