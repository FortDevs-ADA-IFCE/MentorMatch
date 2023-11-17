//
//  Feed.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI

struct Feed: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            ListaCardsPergunta()
            .navigationTitle("Início")
            .toolbar {
                Button {
                    showingSheet.toggle()
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showingSheet) {
                    NovaPergunta()
                }
            }
        }
    }
}

#Preview {
    Feed()
}
