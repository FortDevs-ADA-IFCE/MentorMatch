//
//  ListaCards.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI

struct ListaCards: View {
    @State var perguntas: [CardPergunta] = [
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", data: Date.now),
        CardPergunta(categoria: .portugues, autor: "Guilherme", texto: "Qual a conjugação do verbo 'agir'?", data: Date.now),
        CardPergunta(categoria: .matematica, autor: "Melissa", texto: "Como se calcula uma integral?", data: Date.now)
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
                        .stroke(getNomeSimboloCor(categoria: pergunta.categoria).2, lineWidth: 3)
                        .frame(width: .infinity, height: 150)
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
    }
}

#Preview {
    NavigationStack {
        ListaCards()
    }
}
