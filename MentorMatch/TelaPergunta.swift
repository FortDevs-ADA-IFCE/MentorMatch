//
//  TelaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 21/11/23.
//

import SwiftUI
import SwiftData

struct TelaPergunta: View {
    var pergunta: Pergunta
    
    @State private var digitandoPergunta = false
    @State private var novaResposta = ""
    
    var body: some View {
        List {
            Section {
                PerguntaView(card: pergunta)
            }
            
            ForEach(pergunta.respostas, id: \.id) { resposta in
                RespostaView(resposta: resposta)
            }
            .listRowSeparator(.hidden)           
            
            Section {
                if !digitandoPergunta {
                    Button(action: {digitandoPergunta = true}) {
                        Text("Adicionar resposta")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 30)
                } else {
                    TextField("Digite aqui sua resposta", text: $novaResposta, axis: .vertical)
                    Button("Enviar") {
                        let novaResposta = Resposta(autor: "Autor", texto: novaResposta)
                        pergunta.respostas.append(novaResposta)
                        
                        self.novaResposta = ""
                        digitandoPergunta = false
                    }
                    .disabled(novaResposta == "")
                }
            }
        }
        .listRowSpacing(10)
    }
}

#Preview {
    TelaPergunta(pergunta: Pergunta(categoria: .quimica, texto: "Qual o elemento química com 8 prótons?", respostas: [Resposta(autor: "Autor", texto: "Oxigênio")]))
}
