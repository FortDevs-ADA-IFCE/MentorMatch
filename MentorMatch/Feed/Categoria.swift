//
//  Categoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import Foundation
import SwiftUI

enum Categoria {
    case portugues
    case matematica
    case literatura
    case historia
    case geografia
    case fisica
    case quimica
    case biologia
    case filosofia
    case sociologia
    case artes
    case ingles
    case programacao
}

func getNomeSimboloCor(categoria: Categoria) -> (String, String, Color) {
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
