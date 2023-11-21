//
//  NovaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct NovaPergunta: View {
    @Environment(\.dismiss) var dismiss

    @State private var categoriaSelecionada: Categoria = .portugues
    @State private var pergunta: String = ""

    var body: some View {
        Form {
            Picker("Categoria", selection: $categoriaSelecionada) {
                ForEach(categorias, id: \.self) { categoria in
                    Text(getNome(categoria))
                }
            }
            
            Section("Pergunta") {
                TextField("Digite aqui sua pergunta", text: $pergunta, axis: .vertical)
            
            }
            
            Section {
                Button("Publicar pergunta") {
                    dismiss()
                }
                .disabled(pergunta == "" ? true : false)
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

#Preview {
    NovaPergunta()
}
