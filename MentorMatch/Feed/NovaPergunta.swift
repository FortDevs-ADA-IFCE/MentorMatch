//
//  NovaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct NovaPergunta: View {
    @Environment(\.dismiss) var dismiss

    @State private var categoriaSelecionada: Categoria = .português
    @State private var pergunta: String = ""

    var body: some View {
        Form {
            Picker("Selecione uma categoria", selection: $categoriaSelecionada) {
                ForEach(Categoria.allCases, id: \.self) { categoria in
                    Text(categoria.rawValue.capitalized)
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
