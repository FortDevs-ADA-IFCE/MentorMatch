//
//  Categoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import Foundation

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

func getSimbolo(categoria: Categoria) -> String {
    switch categoria {
    case .portugues:
        return "highlighter"
    case .matematica:
        return "x.squareroot"
    case .literatura:
        return "book"
    case .historia:
        return "hourglass"
    case .geografia:
        return "globe"
    case .fisica:
        return "atom"
    case .quimica:
        return "flask"
    case .biologia:
        return "leaf"
    case .filosofia:
        return "brain"
    case .sociologia:
        return "person.3"
    case .artes:
        return "paintpalette"
    case .ingles:
        return "ellipsis.bubble.fill"
    case .programacao:
        return "laptopcomputer"
    }
}

func getNome(categoria: Categoria) -> String {
    switch categoria {
    case .portugues:
        return "Português"
    case .matematica:
        return "Matemática"
    case .literatura:
        return "Literatura"
    case .historia:
        return "História"
    case .geografia:
        return "Geografia"
    case .fisica:
        return "Física"
    case .quimica:
        return "Química"
    case .biologia:
        return "Biologia"
    case .filosofia:
        return "Filosofia"
    case .sociologia:
        return "Sociologia"
    case .artes:
        return "Artes"
    case .ingles:
        return "Inglês"
    case .programacao:
        return "Programação"
    }
}
