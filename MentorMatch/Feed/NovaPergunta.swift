//
//  NovaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct NovaPergunta: View {
    let categorias: [Categoria] = [.artes, .biologia, .filosofia, .fisica, .geografia, .historia, .ingles, .literatura, .matematica, .portugues, .programacao, .quimica, .sociologia]
    
    @Environment(\.dismiss) var dismiss

    @State private var categoriaSelecionada: Categoria = .portugues
    @State private var pergunta: String = ""

    var body: some View {
        Form {
            Picker("Selecione uma categoria", selection: $categoriaSelecionada) {
                ForEach(categorias, id: \.self) { categoria in
                    Text(getNome(categoria))
                }
            }
            Section {
                TextField("Digite aqui sua pergunta", text: $pergunta, axis: .vertical)
                    .lineLimit(5...10)
            }
            
        }
        Button("Enviar") {
            dismiss()
        }
    }
}

#Preview {
    NovaPergunta()
}
