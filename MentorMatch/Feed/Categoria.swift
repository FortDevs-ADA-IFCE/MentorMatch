//
//  Categoria.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 07/11/23.
//

import Foundation
import SwiftUI

enum Categoria: String, CaseIterable, Identifiable {
    case português
    case matemática
    case literatura
    case história
    case geografia
    case física
    case química
    case biologia
    case filosofia
    case sociologia
    case artes
    case inglês
    case programação
    
    var id: Self { self }
}

func getNomeSimboloCor(categoria: Categoria) -> (String, String, Color) {
    switch categoria {
    case .português:
        return ("Português", "highlighter", .português)
    case .matemática:
        return ("Matemática", "x.squareroot", .matemática)
    case .literatura:
        return ("Literatura", "book", .literatura)
    case .história:
        return ("História", "hourglass", .história)
    case .geografia:
        return ("Geografia", "globe", .geografia)
    case .física:
        return ("Física", "atom", .física)
    case .química:
        return ("Química", "flask", .química)
    case .biologia:
        return ("Biologia", "leaf", .biologia)
    case .filosofia:
        return ("Filosofia", "brain", .filosofia)
    case .sociologia:
        return ("Sociologia", "person.3", .sociologia)
    case .artes:
        return ("Artes", "paintpalette", .artes)
    case .inglês:
        return ("Inglês", "ellipsis.bubble.fill", .inglês)
    case .programação:
        return ("Programação", "laptopcomputer", .programação)
    }
}
