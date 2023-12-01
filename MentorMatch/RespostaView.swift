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
            
            HStack {
                Spacer()
                Image(systemName: "hand.thumbsup")
                Image(systemName: "hand.thumbsdown")
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
