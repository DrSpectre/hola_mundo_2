//
//  vista_juego_gato.swift
//  prueba_hola_mundo
//
//  Created by Jadzia Gallegos on 11/02/26.
//

import SwiftUI

struct VistaJuegoGato: View {
    @State var nombre_jugador = ""
    @State var valor_del_slider = 0.0
    
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                TextField("Por favor introduce tu nombre", text: $nombre_jugador)
                    .padding(20)
            }
            
            Slider(value: $valor_del_slider,
                   in: 0...100,
                   step: 1
            )
            
            ScrollView{
                LazyVStack{
                    ForEach((0...Int(valor_del_slider)).reversed(), id: \.self){_ in
                        Image("gallo_con_tenis")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 300)
                    }
                }
            }

            
            Spacer()
            
            VStack{
                
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
            Spacer()
        }
    }
}

#Preview {
    VistaJuegoGato()
}
