//
//  Type.swift
//  Mock
//
//  Created by Nats Salgado on 26/02/24.
//

import Foundation
import SwiftUI

struct Type: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var videoURL : String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
