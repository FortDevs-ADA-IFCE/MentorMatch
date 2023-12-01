//
//  PerguntaView.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import SwiftUI

struct PerguntaView: View, Identifiable {
    var card: Pergunta
    let id = UUID()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Image(systemName: getSimbolo(card.categoria))
                Text(getNome(card.categoria))
                    .fontWeight(.semibold)
            }
            
            HStack {
                Text(card.texto)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .lineLimit(2)
            }
            
            HStack {
                Text(card.data.formatted())
                Spacer()
                Text(card.autor)
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
        PerguntaView(card: Pergunta(categoria: .quimica, autor: "Joel", texto: "Qual o elemento químico que contém 8 prótons?", respostas: []))
            .padding(10)
    }
    .padding(10)
}

