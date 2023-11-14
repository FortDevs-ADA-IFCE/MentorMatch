//
//  CardCategoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct CardCategoria: View, Identifiable {
    let id = UUID()
    let categoria: Categoria
    @State var isSelected = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? .blue : .black, lineWidth: 3)
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
            VStack(alignment: .center, spacing: 10) {
                Image(systemName: getNomeSimboloCor(categoria: categoria).1)
                    .font(.title)
                    .bold()
                Text(getNomeSimboloCor(categoria: categoria).0)
                    .fontWeight(.semibold)
            }
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

#Preview {
    CardCategoria(categoria: .quimica)
        .padding(10)
}
