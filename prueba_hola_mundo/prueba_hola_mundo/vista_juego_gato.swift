//
//  vista_juego_gato.swift
//  prueba_hola_mundo
//
//  Created by Jadzia Gallegos on 11/02/26.
//

import SwiftUI

struct VistaJuegoGato: View {
    var body: some View {
        
        Text("Juego del gato")

        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
        
        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
        
        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
    }
}

#Preview {
    VistaJuegoGato()
}
