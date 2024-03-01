//
//  PanelEstadistica.swift
//  MoveWare
//
//  Created by Alumno on 26/02/24.
//

import SwiftUI

struct PanelEstadisticaView: View {
    var body: some View {
        VStack {
            Text("Imagen fija de estadisticas")
                .font(.system(size: 40))
                .padding()
            Image("estadisticasfija")
                .scaledToFit()
                .background(Color.cyan.opacity(0.7))
                .frame(maxWidth: 500, maxHeight: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
            // Aquí puedes agregar cualquier contenido que desees en tu panel
            Button(action: {
                // Acción del botón
            }) {
                
            }
            .padding()
            
            // Puedes agregar más contenido aquí según sea necesario
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct PanelEstadisticaView_Previews: PreviewProvider {
    static var previews: some View {
        PanelEstadisticaView()
    }
}
