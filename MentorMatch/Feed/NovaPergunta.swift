//
//  NovaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI
import SwiftData

struct NovaPergunta: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext

    @State private var categoriaSelecionada: Categoria = .portugues
    @State private var textoDigitado: String = ""

    var body: some View {
        Form {
            Section("Pergunta") {
                TextField("Digite aqui sua pergunta", text: $textoDigitado, axis: .vertical)
            }
            
            Picker("Categoria", selection: $categoriaSelecionada) {
                ForEach(Categoria.allCases, id: \.self) { categoria in
                    Text(getNome(categoria))
                }
            }
            
            Section {
                Button("Publicar pergunta") {
                    modelContext.insert(Pergunta(categoria: categoriaSelecionada, texto: textoDigitado))
                    textoDigitado = ""
                    dismiss()
                }
                .disabled(textoDigitado == "" ? true : false)
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
