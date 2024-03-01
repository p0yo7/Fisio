//
//  PanelView.swift
//  MoveWare
//
//  Created by Alumno on 26/02/24.
//

import SwiftUI

struct PanelView: View {
    
    let buttonOptions = ["abrir", "nuevo", "opciones"]
    
    var body: some View {
        VStack {
            Text("MENU")
                .font(.title)
                .padding()
                .clipped()
            
            // Aquí puedes agregar cualquier contenido que desees en tu panel
            
            Botones(type: botonTypes[0])
            
            // Puedes agregar más contenido aquí según sea necesario
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

struct PanelView_Previews: PreviewProvider {
    static var previews: some View {
        PanelView()
    }
}
