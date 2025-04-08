//
//  IngredientesSection.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 08/04/25.
//

import SwiftUI

struct IngredientesSection: View {
    @State var receita: Receita
    
    var body: some View {
        Section {
            ForEach(receita.ingredientes, id: \.self) { ingrediente in
                Text("- " + ingrediente)
            }
        } header: {
            Text("Ingredientes")
                .font(.title3)
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
        }
    }
}
