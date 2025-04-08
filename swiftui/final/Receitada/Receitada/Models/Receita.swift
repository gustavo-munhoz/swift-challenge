//
//  Receita.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 03/04/25.
//

import Foundation

struct Receita: Identifiable {
    let id: UUID = UUID()
    let nome: String
    let nomeFoto: String
    let ingredientes: [String]
    let modoDePreparo: String
    var isFavorita: Bool
}

extension Receita: Equatable {
    static func == (lhs: Receita, rhs: Receita) -> Bool {
        lhs.id == rhs.id
        && lhs.isFavorita == rhs.isFavorita
    }
}
