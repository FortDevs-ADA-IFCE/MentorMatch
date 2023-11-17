//
//  Categorias.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct Categorias: View {
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
