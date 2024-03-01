//
//  Test.swift
//  MoveWare
//
//  Created by Alumno on 26/02/24.
//

import SwiftUI

struct Test: View {
    let buttonOptions = ["Opción 1", "Opción 2", "Opción 3"] // Ejemplo de opciones para los botones

    var body: some View {
        
            VStack {
                Text("Test")
                    .font(.headline)
                    .padding()
                List(buttonOptions, id: \.self) { option in
                    Button(action: {
                        // Acción cuando se presiona el botón
                        print("Botón presionado: \(option)")
                    }) {
                        Text(option)
                    }
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
