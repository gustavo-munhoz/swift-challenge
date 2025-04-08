//
//  ListaReceitasView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 08/04/25.
//

import SwiftUI

struct ListaReceitasView: View {
    @State var receitas: [Receita] = []
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Todas as receitas")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            ForEach($receitas) { $receita in
                HStack {
                    Text(receita.nome)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            receita.isFavorita.toggle()
                        }
                    } label: {
                        Image(systemName: receita.isFavorita ? "star.fill" : "star")
                            .foregroundStyle(.orange)
                            .font(.title2)
                            .padding(.trailing)
                    }
                }
                .background(.white)
                .frame(height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.indigo, lineWidth: 1.5)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ListaReceitasView(
        receitas: [
            Receita(
                nome: "Macarronada",
                ingredientes: ["Massa", "Molho de tomate", "Queijo", "Carne"],
                modoDePreparo: "Cozinhe a massa e misture os ingredientes",
                isFavorita: false
            ),
            Receita(
                nome: "Feijoada",
                ingredientes: ["Feijão", "Carne"],
                modoDePreparo: "Cozinhe o feijão e misture os ingredientes",
                isFavorita: false
            ),
        ]
    )
}
