//
//  ListaCategorias.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct ListaCategorias: View {
    var body: some View {
        List {
            ForEach(Categoria.allCases) { categoria in
               ItemCategoria(categoria: categoria)
            }
        }
    }
}

#Preview {
    ListaCategorias()
}
