//
//  ModoDePreparoSection.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 08/04/25.
//


import SwiftUI

struct ModoDePreparoSection: View {
    @State var receita: Receita
    
    var body: some View {
        Section {
            Text(receita.modoDePreparo)
        } header: {
            Text("Modo de preparo")
                .font(.title3)
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
        }
        
    }
}
