//
//  ListaReceitasView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 03/04/25.
//

import SwiftUI

struct ListaReceitasView: View {
    @State var receitas: [Receita]
    @Binding var receitaFazendoAgora: Receita?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Section {
                    ForEach($receitas) { $receita in
                        NavigationLink(
                            destination: ReceitaView(
                                receita: $receita,
                                receitaFazendoAgora: $receitaFazendoAgora
                            )
                                .toolbarVisibility(.hidden, for: .tabBar)
                        ) {
                            HStack {
                                Image(receita.nomeFoto)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                
                                Text(receita.nome)
                                    .multilineTextAlignment(.leading)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                
                                Spacer()
                                
                                Button {
                                    withAnimation {
                                        receita.isFavorita.toggle()
                                        receitas.sort { $0.isFavorita && !$1.isFavorita }
                                    }
                                } label: {
                                    Image(systemName: receita.isFavorita ? "star.fill" : "star")
                                        .foregroundStyle(.orange)
                                        .font(.title2)
                                        .padding(.trailing)
                                }
                            }
                        }
                        .background(.white)
                        .frame(height: 80)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .strokeBorder(Color.indigo, lineWidth: 1.5)
                        )
                    }
                } header: {
                    HStack {
                        Text("Todas as receitas")
                            .foregroundStyle(.gray)
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Receitada")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ListaReceitasView(
        receitas: GeradorDeReceitas.gerarReceitas(),
        receitaFazendoAgora: Binding(
            projectedValue: .constant(
                GeradorDeReceitas.gerarReceitas()[0]
            )
        )
    )
}
