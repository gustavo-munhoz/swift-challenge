//
//  ReceitaView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 03/04/25.
//

import SwiftUI

struct ReceitaView: View {
    @Binding var receita: Receita
    @Binding var receitaFazendoAgora: Receita?
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            Image(receita.nomeFoto)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .shadow(radius: 8, y: 8)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(receita.nome)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            receita.isFavorita.toggle()
                        }
                    } label: {
                        Image(systemName: receita.isFavorita ? "star.fill" : "star")
                            .foregroundStyle(.orange)
                            .font(.title2)
                    }
                }
                
                Spacer(minLength: 16)
                
                IngredientesSection(receita: receita)
                
                Spacer(minLength: 16)
                
                ModoDePreparoSection(receita: receita)
                
                Button(action: {
                    receitaFazendoAgora = receita
                    dismiss()
                }) {
                    Text("Fazer agora")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(.indigo)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .padding()
        }        
    }
}

#Preview {
    ReceitaView(
        receita: Binding(projectedValue: .constant(
            GeradorDeReceitas.gerarReceitas().first!
        )),
        receitaFazendoAgora: Binding(
            projectedValue: .constant(nil)
        )
    )
}

