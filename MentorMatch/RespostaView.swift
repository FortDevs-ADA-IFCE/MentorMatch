//
//  RespostaView.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 17/11/23.
//

import SwiftUI

struct RespostaView: View, Identifiable {
    let id = UUID()
    var resposta: Resposta
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack {
                Text(resposta.data.formatted())
                Spacer()
                Text(resposta.autor)
                    .font(.callout)
            }
            
            HStack {
                Text(resposta.texto)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            }
            
            HStack(spacing: 10) {
                Spacer()
                Image(systemName: "hand.thumbsup")
                    .font(.system(size: 22))
                Image(systemName: "hand.thumbsdown")
                    .font(.system(size: 22))
            }
        }
    }

}

#Preview {
    ZStack {
        RespostaView(resposta: Resposta(autor: "Joel", texto: "Esse elemento é o oxigênio."))
            .padding(10)
            .border(Color.black)
    }
    .padding(10)
}
