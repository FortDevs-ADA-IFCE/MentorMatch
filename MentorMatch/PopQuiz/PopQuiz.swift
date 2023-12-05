//
//  PopQuiz.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI
import SwiftData

struct PopQuiz: View {
    @Query var perguntas: [Pergunta]
    @State private var categoriaSelecionada: Categoria = .portugues
    @State private var exemploPergunta: String? = "Qual a conjugação do verbo IR?"
//    @State private var perguntasDaCategoriaSelecionada = perguntas.filter()

    //    @State var perguntasDaCategoriaSelecionada: [CardPergunta] = ListaCardsPergunta.perguntas.filter {
//            $0.categoria == categoriaSelecionada
//    }
//    @State var perguntaAleatoria: String? = perguntasDaCategoriaSelecionada.randomElement()?.texto

    @State var resposta: String = ""
    @State private var mostrarAlerta = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Categoria", selection: $categoriaSelecionada) {
                    ForEach(Categoria.allCases) { categoria in
                        Text(getNome(categoria))
                    }
                }
                
                Section("Pergunta") {
                    Text(exemploPergunta ?? "Não há perguntas com essa categoria ainda.")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
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
