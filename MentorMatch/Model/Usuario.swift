//
//  Usuario.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 14/11/23.
//

import SwiftUI

struct Usuario {
    let nome: String
    var email: String
    var categoriasSelecionadas: [Categoria] = []
    var perguntasEnviadas: [Pergunta] = []
}
