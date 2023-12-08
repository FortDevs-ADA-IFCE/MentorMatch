//
//  PopQuiz.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI
import SwiftData

struct PopQuiz: View {
    @Query private var perguntas: [Pergunta]
    
    @State private var categoriaSelecionada: Categoria = .portugues
    @State private var resposta: String = ""
    @State private var mostrarAlerta = false
    @FocusState private var isFocused: Bool
    
    var perguntasRespondidas: [Pergunta] = []
    var perguntasFiltradas: [Pergunta] {
        perguntas.filter { pergunta in
            pergunta.categoria == categoriaSelecionada
        }
    }
    var perguntaAleatoria: Pergunta? {
        perguntasFiltradas.randomElement()
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Categoria", selection: $categoriaSelecionada) {
                    ForEach(Categoria.allCases) { categoria in
                        Text(getNome(categoria))
                    }
                }
                
                Section("Pergunta") {
                    Text(perguntaAleatoria?.texto ?? "Não há perguntas nessa categoria ainda.")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    TextField("Digite aqui sua resposta", text: $resposta, axis: .vertical)
                        .disabled(perguntaAleatoria == nil ? true : false)
                        .lineLimit(5...)
                        .focused($isFocused)
                        
                }
                
                Section {
                    Button("Enviar resposta") {
                        perguntaAleatoria?.respostas.append(Resposta(texto: resposta))
                        resposta = ""
                        mostrarAlerta = true
                    }
                    .disabled(resposta == "" ? true : false)
                }
            }
            .navigationTitle("Pop Quiz")
            .alert("Agradecemos pela sua resposta!", isPresented: $mostrarAlerta) {
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
