//
//  TelaCarregamento.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 03/11/23.
//

import SwiftUI

struct TelaCarregamento: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.6, blue: 0.38)
                .ignoresSafeArea()
            VStack(spacing: 25) {
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 70))
                Text("MentorMatch")
                    .font(.system(size: 57, design: .rounded))
            }
        }
    }
}

#Preview {
    TelaCarregamento()
}
