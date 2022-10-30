//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by iXavy on 4/10/22.
//

import SwiftUI

let picachu = "Picachu"
let charmander = "Charmander"
let bulbasaur = "Bulbasaur"

let pockemons = [
    picachu,
    charmander,
    bulbasaur]

struct ContentView: View {
 
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
      
            Text("Hello, cabrones!")
                .font(.title)
                .foregroundColor(Color.blue)
           
                Text("COMO ESTAIS")
                    .font(.footnote)
                    .padding(0.0)
            HStack {
                Button("Boton", action: accion)
                    .padding()
                PokemonButton(title: "👈") {
                    print("Izquierda")
                }
                
                PokemonButton(title: "👉") {
                    print("Derecha")
                }
            }
            
        }
    }
    
    func accion() {
        print ("Has presionado boton")
    }
}

struct PokemonButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(_: title, action: action)
            .padding(40.0)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

