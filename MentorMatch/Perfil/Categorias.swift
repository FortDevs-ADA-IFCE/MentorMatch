//
//  Categorias.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct Categorias: View {
    let categorias: [Categoria] = [.artes, .biologia, .filosofia, .fisica, .geografia, .historia, .ingles, .literatura, .matematica, .portugues, .programacao, .quimica, .sociologia]
    @State private var isSelected = false
    
    var body: some View {
        List {
            ForEach(categorias) { categoria in
               ItemCategoria(categoria: categoria)
            }
        }
    }
}

#Preview {
    Categorias()
}
