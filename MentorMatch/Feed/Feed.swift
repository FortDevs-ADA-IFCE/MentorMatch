//
//  Feed.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI
import SwiftData

struct Feed: View {
    @State private var showingSheet = false
    @State private var sortOrder =  SortDescriptor(\Pergunta.data, order: .reverse)
    @State private var searchText = ""
    @State private var categoriaSelecionada: Categoria? = nil
    
    var body: some View {
        NavigationStack {
            ListaCardsPergunta(sort: sortOrder, searchString: searchText)
            .navigationTitle("Início")
            .searchable(text: $searchText, prompt: "Buscar pergunta")
            .toolbar {
                Button {
                    showingSheet.toggle()
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showingSheet) {
                    NovaPergunta()
                }
                
                Menu("Filtro", systemImage: "line.3.horizontal.decrease.circle") {
                    Picker("Categoria", selection: $categoriaSelecionada) {
                        ForEach(Categoria.allCases) { categoria in
                            Text(getNome(categoria))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Feed()
}
