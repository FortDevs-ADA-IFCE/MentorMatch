//
//  Resposta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 28/11/23.
//

import Foundation
import SwiftData

@Model
class Resposta: Identifiable {
    let id = UUID()
    let autor: String
    let texto: String
    let data: Date
    
    init(autor: String = "Autor", texto: String, data: Date = .now) {
        self.autor = autor
        self.texto = texto
        self.data = data
    }
}

