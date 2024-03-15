//
//  PatientModel.swift
//  Fisio
//
//  Created by Nats Salgado on 13/03/24.
//

import Foundation

struct Patient : Identifiable, Codable, Hashable {
    var id = UUID()
    var name : String
    var lastName : String
    var username : String
    // var email : String
    // var cellphone : String
    // var password : String
    var routine : Routine
}

let patients: [Patient] = [
    Patient(name: "John", lastName: "Doe", username: "john_doe", routine: fakeRoutine),
    Patient(name: "Jane", lastName: "Smith", username: "jane_smith", routine: fakeRoutine),
    Patient(name: "Alice", lastName: "Johnson", username: "alice_johnson", routine: fakeRoutine),
]
