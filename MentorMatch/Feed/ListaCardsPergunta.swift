//
//  ListaCardsPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI

struct ListaCardsPergunta: View {
    static var respostasPerguntaQuimica: [CardResposta] = [
        CardResposta(autor: "Fulano", texto: "Esse elemento é o oxigênio.", data: Date.now),
        CardResposta(autor: "Sicrano", texto: "Oxigênio.", data: Date.now),
        CardResposta(autor: "Beltrano", texto: "\nNova linha\nNova linha\nNova linha\nNova linha.", data: Date.now)
    ]

    var perguntas: [CardPergunta] = [
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", respostas: respostasPerguntaQuimica),
        CardPergunta(categoria: .portugues, autor: "Guilherme", texto: "Qual a conjugação do verbo 'agir'?"),
        CardPergunta(categoria: .matematica, autor: "Melissa", texto: "Como se calcula uma integral?"),
        CardPergunta(categoria: .historia, autor: "Rafael", texto: "Quem descobriu o Brasil? "),
        CardPergunta(categoria: .filosofia, autor: "Ana", texto: "Qual é a escola de pensamento de Platão?")
    ]
    
    var body: some View {
        List {
            ForEach(perguntas, id: \.id) { pergunta in
                NavigationLink(destination: TelaPergunta(perguntas: perguntas)) {
                    pergunta
                }
                .listRowSeparator(.hidden)
                .listRowBackground(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(getCor(pergunta.categoria), lineWidth: 3)
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
            }
        }
        .listRowSpacing(10)
    }
}

#Preview {
    NavigationStack {
        ListaCardsPergunta()
    }
}
