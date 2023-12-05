//
//  Pergunta.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 28/11/23.
//

import Foundation
import SwiftData

@Model
class Pergunta: Identifiable {
    let id = UUID()
    let categoria: Categoria
    let autor: String
    var texto: String
    let data: Date = Date.now
    var respostas: [Resposta] = []
    
    init(categoria: Categoria, autor: String = "Autor da pergunta", texto: String) {
        self.categoria = categoria
        self.autor = autor
        self.texto = texto
    }
    
    init(categoria: Categoria, autor: String = "Autor da pergunta", texto: String, respostas: [Resposta]) {
        self.categoria = categoria
        self.autor = autor
        self.texto = texto
        self.respostas = respostas
    }
}
