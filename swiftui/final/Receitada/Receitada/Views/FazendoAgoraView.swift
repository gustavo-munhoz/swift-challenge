//
//  FazendoAgoraView.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 07/04/25.
//

import SwiftUI

struct FazendoAgoraView: View {
    var receita: Receita?
    
    var body: some View {
        Group {
            if let receita {
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
                        }
                        
                        IngredientesSection(receita: receita)
                        
                        Spacer(minLength: 16)
                        
                        ModoDePreparoSection(receita: receita)
                        
                    }
                    .padding()
                }
                
            } else {
                Spacer()
                Text("Nenhuma receita ainda!")
                Spacer()
            }
        }
    }
}

#Preview {
    FazendoAgoraView(receita: GeradorDeReceitas.gerarReceitas().first!)
}
