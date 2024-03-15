//
//  TherapistModel.swift
//  Fisio
//
//  Created by Nats Salgado on 15/03/24.
//

import Foundation

struct Therapist : Identifiable, Codable, Hashable {
    var id = UUID()
    var name : String
    var lastName : String
    var username : String
    var email : String
    // var cellphone : String
    // var password : String
}

let therapist1 = Therapist(name: "Emily", lastName: "Jones", username: "emilyj", email: "emily.jones@example.com")


