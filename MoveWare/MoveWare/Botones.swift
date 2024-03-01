//
//  Botones.swift
//  MoveWare
//
//  Created by Alumno on 27/02/24.
//

import SwiftUI

struct Botones: View {
    var type: Type // Suponiendo que `Type` es un tipo de dato válido
    
    var body: some View {
        NavigationStack{
            Button(action: {
                // Acción del botón
            }) {
                NavigationLink(destination: PanelView()){
                    Text(type.name)
            }
            }
                .padding()
                .background(Color.blue.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}


#Preview {
    Botones(type: botonTypes[0])
}
