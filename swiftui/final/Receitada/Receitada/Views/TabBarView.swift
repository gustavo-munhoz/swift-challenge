//
//  TabBarView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 03/04/25.
//

import SwiftUI

struct TabBarView: View {
    @State var receitas = GeradorDeReceitas.gerarReceitas()
    @State var receitaFazendoAgora: Receita?
    
    var body: some View {
        TabView {
            Tab("Todas", systemImage: "list.bullet.rectangle.portrait.fill") {
                ListaReceitasView(
                    receitas: receitas,
                    receitaFazendoAgora: $receitaFazendoAgora
                )
            }
            
            Tab("Fazendo agora", systemImage: "cooktop.fill") {
                FazendoAgoraView(receita: receitaFazendoAgora)
            }
        }
    }
}

#Preview {
    TabBarView()
}
