//
//  pruebasi.swift
//  MoveWare
//
//  Created by Alumno on 26/02/24.
//

import SwiftUI

struct pruebasi: View {
    let buttonOptions = ["Botón 1", "Botón 2", "Botón 3"] // Ejemplo de opciones para los botones

    var body: some View {
        NavigationView {
            VStack {
                ForEach(buttonOptions, id: \.self) { option in
                    NavigationLink(destination: SecondView(buttonText: option)) { // Navegación a diferentes vistas según la opción
                        Text(option)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.vertical, 5) // Espaciado vertical entre botones
                    }
                    .padding(.horizontal) // Espaciado horizontal para los botones
                }
            }
            .padding() // Padding para la VStack
            .navigationTitle("Lista de Botones") // Título de la barra de navegación
        }
    }
}

struct SecondView: View {
    var buttonText: String // Texto del botón que se mostrará en la segunda vista

    var body: some View {
        VStack {
            Text("Segunda Vista")
                .font(.title)
                .padding()
            Text("Has presionado el botón: \(buttonText)")
                .padding()
        }
        .navigationBarTitle("Detalles") // Título de la barra de navegación de la segunda vista
    }
}

struct pruebasi_Previews: PreviewProvider {
    static var previews: some View {
        pruebasi()
    }
}

