//
//  ContentView.swift
//  MoveWare
//
//  Created by Alumno on 26/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("FISIO")
                .font(.system(size: 60))
                .padding()
                .background(Color.cyan.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            HStack {
                // Primer panel
                PanelView()
                
                // Segundo panel
                PanelEstadisticaView()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.opacity(0.5)) // Cambia el color de fondo de la pantalla completa si lo deseas
        }
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


