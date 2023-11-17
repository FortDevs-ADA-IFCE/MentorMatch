//
//  ItemCategoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 16/11/23.
//

import SwiftUI

struct ItemCategoria: View {
    let categoria: Categoria
    @State private var isSelected = false
    
    var body: some View {
        HStack {
            Text(getNome(categoria))
                .foregroundStyle(isSelected ? .blue : .primary)
            Spacer()
            Image(systemName: getSimbolo(categoria))
                .foregroundStyle(isSelected ? .blue : .primary)
//                .padding(.trailing, 10)
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

#Preview {
    List(0..<1) { item in
        ItemCategoria(categoria: .quimica)
        ItemCategoria(categoria: .portugues)
        ItemCategoria(categoria: .matematica)
        ItemCategoria(categoria: .fisica)
    }
}
