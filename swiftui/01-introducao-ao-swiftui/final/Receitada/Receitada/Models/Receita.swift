//
//  Receita.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 08/04/25.
//

import Foundation

struct Receita: Identifiable {
    let id = UUID()
    let nome: String
    let ingredientes: [String]
    let modoDePreparo: String
    var isFavorita: Bool
}
