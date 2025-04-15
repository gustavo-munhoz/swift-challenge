//
//  GeradorDeReceitas.swift
//  Receitada
//
//  Created by Gustavo Munhoz Correa on 04/04/25.
//

import Foundation

struct GeradorDeReceitas {
    
    private init() { }
    
    static func gerarReceitas() -> [Receita] {
        let receitaBoloCenoura = Receita(
            nome: "Bolo de Cenoura",
            nomeFoto: "bolo_de_cenoura",
            ingredientes: [
                "3 cenouras médias raladas",
                "4 ovos",
                "1 xícara de óleo",
                "2 xícaras de açúcar",
                "2 e 1/2 xícaras de farinha de trigo",
                "1 colher de sopa de fermento em pó",
                "Para a cobertura: 1 colher de sopa de manteiga, 3 colheres de sopa de cacau em pó, 1 xícara de açúcar, 1/2 xícara de leite"
            ],
            modoDePreparo: """
1. Pré-aqueça o forno a 180°C e unte uma forma com manteiga e farinha.
2. No liquidificador, bata as cenouras raladas, os ovos, o óleo e o açúcar até obter uma mistura homogênea.
3. Em uma tigela, peneire a farinha e o fermento. Em seguida, incorpore a mistura líquida, mexendo delicadamente até que todos os ingredientes estejam bem misturados.
4. Despeje a massa na forma e leve ao forno por aproximadamente 40 a 45 minutos, ou até que um palito inserido no centro saia limpo.
5. Enquanto o bolo assa, prepare a cobertura: em uma panela, derreta a manteiga, adicione o cacau em pó, o açúcar e o leite, e cozinhe em fogo médio, mexendo constantemente até obter um creme espesso.
6. Retire o bolo do forno, desenforme ainda morno e espalhe a cobertura por cima de maneira uniforme.
7. Deixe o bolo esfriar um pouco antes de cortar e servir.
""",
            isFavorita: true
        )
        
        let receitaMacarronada = Receita(
            nome: "Macarronada Clássica",
            nomeFoto: "macarronada",
            ingredientes: [
                "500g de macarrão (espaguete ou fusilli)",
                "500g de tomates maduros ou 1 lata de tomate pelado",
                "1 cebola grande picada",
                "3 dentes de alho picados",
                "1 colher de chá de orégano",
                "Azeite, sal e pimenta a gosto",
                "Folhas de manjericão fresco",
                "Queijo parmesão ralado"
            ],
            modoDePreparo: """
1. Cozinhe o macarrão em água fervente com sal até ficar al dente. Escorra e reserve.
2. Em uma panela, aqueça o azeite e refogue a cebola até que fique transparente.
3. Adicione o alho e refogue por mais 1 minuto, tomando cuidado para não queimar.
4. Acrescente os tomates (picados ou pelados), o orégano, o sal e a pimenta. Deixe cozinhar em fogo médio por 15 a 20 minutos, permitindo que o molho engrosse e os sabores se intensifiquem.
5. Misture o macarrão cozido com o molho e ajuste os temperos se necessário.
6. Sirva a macarronada decorada com folhas de manjericão fresco e polvilhada com queijo parmesão ralado.
""",
            isFavorita: false
        )
        
        let receitaFeijoada = Receita(
            nome: "Feijoada Tradicional",
            nomeFoto: "feijoada",
            ingredientes: [
                "500g de feijão preto",
                "200g de carne seca dessalgada e cortada em cubos",
                "150g de costelinha de porco",
                "150g de linguiça calabresa em rodelas",
                "150g de paio em rodelas",
                "1 cebola grande picada",
                "4 dentes de alho picados",
                "2 folhas de louro",
                "Sal e pimenta a gosto",
                "Cheiro-verde para finalizar"
            ],
            modoDePreparo: """
1. Deixe o feijão de molho em água por pelo menos 8 horas.
2. Cozinhe o feijão com as folhas de louro em uma panela grande até que fique macio.
3. Em outra panela, refogue a cebola e o alho no azeite até dourarem levemente.
4. Adicione as carnes (carne seca, costelinha, linguiça e paio) ao refogado e doure por alguns minutos.
5. Transfira o refogado para a panela com o feijão e cozinhe em fogo baixo por aproximadamente 1 hora, permitindo que os sabores se integrem.
6. Ajuste o sal e a pimenta e finalize com cheiro-verde picado.
7. Sirva a feijoada acompanhada de arroz branco, farofa, couve refogada e rodelas de laranja.
""",
            isFavorita: false
        )
        
        return [receitaBoloCenoura, receitaMacarronada, receitaFeijoada]
    }
}
