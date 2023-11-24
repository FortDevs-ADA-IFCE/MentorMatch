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
        CardResposta(autor: "Sicrano", texto: "Oxigênio.", data: Date.now),
        CardResposta(autor: "Beltrano", texto: "\nNova linha\nNova linha\nNova linha\nNova linha.", data: Date.now)
    ]

    @State var perguntas: [CardPergunta] = [
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", respostas: respostasPerguntaQuimica),
        CardPergunta(categoria: .portugues, autor: "Guilherme", texto: "Qual a conjugação do verbo 'agir'?"),
        CardPergunta(categoria: .matematica, autor: "Melissa", texto: "Como se calcula uma integral?"),
        CardPergunta(categoria: .historia, autor: "Rafael", texto: "Quem descobriu o Brasil? "),
        CardPergunta(categoria: .filosofia, autor: "Ana", texto: "Qual é a escola de pensamento de Platão?")
    ]
    
    var pergunta: CardPergunta { perguntas[0] }
    
    @State private var digitandoPergunta = false
    @State private var novaResposta = ""
    
    var body: some View {
        List {
            Section {
                pergunta
            }
            
            ForEach(pergunta.respostas, id: \.id) { resposta in
                resposta
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
                        let novaResposta = CardResposta(autor: "Autor", texto: novaResposta, data: Date.now)
                        TelaPergunta.respostasPerguntaQuimica.append(novaResposta)
                        if let index = perguntas.firstIndex(where: { $0.id == pergunta.id}) {
                            perguntas[index].respostas.append(novaResposta)
                        }
                        
                        self.novaResposta = ""
                        digitandoPergunta = false
                    }
                }
            }
        }
        .listRowSpacing(10)
    }
}

#Preview {
    TelaPergunta()
}
