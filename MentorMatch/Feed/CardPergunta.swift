//
//  CardPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import SwiftUI

struct CardPergunta: View, Hashable, Identifiable {
    let id = UUID()
    let categoria: Categoria
    let autor: String
    let texto: String
    let data: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Image(systemName: getSimbolo(categoria))
                Text(getNome(categoria))
                    .fontWeight(.semibold
                    )
                
            }
            
            HStack {
                Text(texto)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .lineLimit(2)
                Spacer()
            }
            
            HStack {
                Text(data.formatted())
                Spacer()
                Text(autor)
                    .font(.callout)
            }
        }
    }
}

#Preview {
    ZStack {
        RoundedRectangle(cornerRadius: 10)
            .stroke(.quimica, lineWidth: 3)
            .frame(width: .infinity, height: 150)
            .foregroundColor(.white)
        CardPergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", data: Date.now)
            .padding(10)
    }
    .padding(10)
}
