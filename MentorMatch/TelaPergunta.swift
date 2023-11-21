//
//  TelaPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 21/11/23.
//

import SwiftUI

struct TelaPergunta: View {
    static var respostasPerguntaQuimica: [CardResposta] = [
        CardResposta(autor: "Fulano", texto: "Esse elemento é o oxigênio.", data: Date.now),
        CardResposta(autor: "Sicrano", texto: "Oxigênio.", data: Date.now)
    ]
    
    static var perguntas: [CardPergunta] = [
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", respostas: respostasPerguntaQuimica),
        CardPergunta(categoria: .portugues, autor: "Guilherme", texto: "Qual a conjugação do verbo 'agir'?"),
        CardPergunta(categoria: .matematica, autor: "Melissa", texto: "Como se calcula uma integral?"),
        CardPergunta(categoria: .historia, autor: "Rafael", texto: "Quem descobriu o Brasil? "),
        CardPergunta(categoria: .filosofia, autor: "Ana", texto: "Qual é a escola de pensamento de Platão?")
    ]
    
    var pergunta = perguntas[0]
    
    var body: some View {
        List {
            Section {
                pergunta
            }
            
            ForEach(pergunta.respostas, id: \.id) { resposta in
                resposta
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(.programacao, lineWidth: 2)
                    .frame(maxWidth: .infinity, maxHeight: 150)
                    .foregroundColor(.white)
                    .padding(
                        EdgeInsets(
                            top: 2,
                            leading: 10,
                            bottom: 2,
                            trailing: 10
                        )
                    )
            )
            
            Section {
                Button(action: {}) {
                    Text("Adicionar resposta")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                .frame(maxWidth: .infinity, maxHeight: 30)
            }
        }
        .listRowSpacing(10)
    }
}

#Preview {
    TelaPergunta()
}
