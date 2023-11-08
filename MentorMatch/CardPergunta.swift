//
//  CardPergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import SwiftUI

struct CardPergunta: View {
    let categoria: Categoria
    let autor: String
    let texto: String
    let data: Date
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(getNomeSimboloCor(categoria: categoria).2, lineWidth: 3)
                .frame(width: .infinity, height: 150)
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: getNomeSimboloCor(categoria: categoria).1)
                    Text(getNomeSimboloCor(categoria: categoria).0)
                        .fontWeight(.semibold
                        )
                    
                }
                
                HStack {
                    Text(texto)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .lineLimit(2)
                    Spacer()
                    Image(systemName: "arrowshape.forward.circle")
                        .font(.system(size: 20))
                }
                
                HStack {
                    Text(data.formatted())
                    Spacer()
                    Text(autor)
                        .font(.callout)
                }
            }
            .padding(.horizontal, 10)
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    CardPergunta(categoria: .quimica, autor: "Joel Lacerda", texto: "Qual o elemento químico que contém 8 prótons?", data: Date.now)
}
