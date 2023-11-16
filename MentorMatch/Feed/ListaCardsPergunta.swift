//
//  ListaCardsPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI

struct ListaCardsPergunta: View {
    @State var perguntas: [CardPergunta] = [
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", data: Date.now),
        CardPergunta(categoria: .portugues, autor: "Guilherme", texto: "Qual a conjugação do verbo 'agir'?", data: Date.now),
        CardPergunta(categoria: .matematica, autor: "Melissa", texto: "Como se calcula uma integral?", data: Date.now),
        CardPergunta(categoria: .historia, autor: "Rafael", texto: "Quem descobriu o Brasil? ", data: Date.now),
        CardPergunta(categoria: .filosofia, autor: "Ana", texto: "Qual é a escola de pensamento de Platão?", data: Date.now)
    ]
    
    var body: some View {
        List {
            ForEach(perguntas, id: \.self) { pergunta in
                NavigationLink(destination: pergunta) {
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
