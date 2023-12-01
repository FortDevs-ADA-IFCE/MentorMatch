//
//  Categoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import SwiftUI

enum Categoria: Codable, CaseIterable, Identifiable {
    case artes
    case biologia
    case filosofia
    case fisica
    case geografia
    case historia
    case ingles
    case literatura
    case matematica
    case portugues
    case quimica
    case sociologia
    case programacao
    
    var id: Self { self }
}

func getInfo(_ categoria: Categoria) -> (String, String, Color) {
    switch categoria {
    case .portugues:
        return ("Português", "highlighter", .portugues)
    case .matematica:
        return ("Matemática", "x.squareroot", .matematica)
    case .literatura:
        return ("Literatura", "book", .literatura)
    case .historia:
        return ("História", "hourglass", .historia)
    case .geografia:
        return ("Geografia", "globe", .geografia)
    case .fisica:
        return ("Física", "atom", .fisica)
    case .quimica:
        return ("Química", "flask", .quimica)
    case .biologia:
        return ("Biologia", "leaf", .biologia)
    case .filosofia:
        return ("Filosofia", "brain", .filosofia)
    case .sociologia:
        return ("Sociologia", "person.3", .sociologia)
    case .artes:
        return ("Artes", "paintpalette", .artes)
    case .ingles:
        return ("Inglês", "ellipsis.bubble.fill", .ingles)
    case .programacao:
        return ("Programação", "laptopcomputer", .programacao)
    }
}

func getNome(_ categoria: Categoria) -> String {
    return getInfo(categoria).0
}

func getSimbolo(_ categoria: Categoria) -> String {
    return getInfo(categoria).1
}

func getCor(_ categoria: Categoria) -> Color {
    return getInfo(categoria).2
}
