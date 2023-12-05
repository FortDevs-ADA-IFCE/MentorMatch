//
//  ListaCardsPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI
import SwiftData

struct ListaCardsPergunta: View {
    @Query(sort: \Pergunta.data, order: .reverse) var perguntas: [Pergunta]
    
    var body: some View {
        List {
            ForEach(perguntas, id: \.id) { pergunta in
                NavigationLink(destination: TelaPergunta(pergunta: pergunta)) {
                    PerguntaView(card: pergunta)
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
    
    init(sort: SortDescriptor<Pergunta>, searchString: String) {
        _perguntas = Query(filter: #Predicate {
            if searchString.isEmpty {
                return true
            } else {
                return $0.texto.localizedStandardContains(searchString)
            }
        }, sort: [sort])
    }
}


#Preview {
    NavigationStack {
        ListaCardsPergunta(sort: SortDescriptor(\Pergunta.texto), searchString: "")
    }
}
