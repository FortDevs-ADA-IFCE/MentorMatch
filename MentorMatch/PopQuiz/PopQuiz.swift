//
//  PopQuiz.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct PopQuiz: View {
    @State var categoriaSelecionada: Categoria = .portugues
    //TODO: perguntaAleatoria abaixo deve pegar do banco de perguntas uma pergunta qualquer da categoria selecionada
    @State var perguntaAleatoria: String = "Quais são os pronomes pessoais do caso reto? (exemplo)"
    @State var resposta: String = ""
    @State private var mostrarAlerta = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Categoria", selection: $categoriaSelecionada) {
                    ForEach(categorias) { categoria in
                        Text(getNome(categoria))
                    }
                }
                
                Section("Pergunta") {
                    Text(perguntaAleatoria)
                    TextField("Digite aqui sua resposta", text: $resposta, axis: .vertical)
                        .lineLimit(5...10)
                        .focused($isFocused)
                }
                
                Section {
                    Button("Enviar resposta") {
                        resposta = ""
                        mostrarAlerta = true
                    }
                    .disabled(resposta == "" ? true : false)
                }
            }
            .navigationTitle("Pop Quiz")
            .alert("Obrigado pela sua resposta!", isPresented: $mostrarAlerta) {
                Button("Voltar", role: .cancel) { }
                Button("Responder outra pergunta") {
                    // TODO: pegar outra pergunta da mesma categoria
                }
            }
            .onTapGesture {
                hideKeyboard()
        }
        }
    }
}

#Preview {
    PopQuiz()
}
