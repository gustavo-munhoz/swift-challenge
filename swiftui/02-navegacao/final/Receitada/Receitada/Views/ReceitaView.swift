//
//  ReceitaView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 09/04/25.
//

import SwiftUI

struct ReceitaView: View {
    @Binding var receita: Receita
    
    var body: some View {
        ScrollView {
            Image(receita.nomeFoto)
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 300)
                .clipped()
                .shadow(radius: 8, y: 8)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(receita.nome)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: receita.isFavorita ? "star.fill" : "star")
                        .foregroundStyle(.orange)
                        .font(.title2)
                }
                
                Spacer(minLength: 16)
                
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
                
                Spacer(minLength: 16)
                
                Section {
                    Text(receita.modoDePreparo)
                } header: {
                    Text("Modo de preparo")
                        .font(.title3)
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ReceitaView(
        receita: .constant(
            GeradorDeReceitas.gerarReceitas().first!
        )
    )
}
