//
//  Perfil.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct Perfil: View {
    let usuario = Usuario(nome: "Joel Lacerda", email: "joellacerdaol@gmail.com")
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text(usuario.nome)
                    Text(usuario.email)
                }
                Section {
                    NavigationLink("Categorias") {
                        Categorias()
                    }
                }
                Section {
                    NavigationLink("Perguntas enviadas") {
                        
                    }
                }
            }
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Perfil()
}
