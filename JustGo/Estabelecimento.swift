//
//  Estabelecimento.swift
//  JustGo
//
//  Created by student on 11/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Estabelecimento {
    var nome: String?
    var tag: String?
    var descricao: String?
    var logo: String?
    var logoMaior: String?
    
    init(nome: String, tag: String, descricao: String, logo: String, logoMaior: String){
        self.nome = nome
        self.tag = tag
        self.descricao = descricao
        self.logo = logo
        self.logoMaior = logoMaior
    }
}

class EstabelecimentoDAO {
    static func getEstabelecimentos() -> [Estabelecimento]
    {
        return[
            Estabelecimento(nome: "Mama Mia", tag: "Restaurante", descricao: "O melhor macarrone de toda a Itália no Brasil, com muito molho e queijo.", logo: "Imgmama-mia", logoMaior: "mama-mia"),
            Estabelecimento(nome: "Prato Feito", tag: "Restaurante", descricao: "O melhor preço pelo maior prato de Itu em Campinas!", logo: "Imgprato-feito", logoMaior: "prato-feito"),
            Estabelecimento(nome: "Senhorito Bebidas", tag: "Taverna", descricao: "Do Chopp ao Suco de laranja para todos os gostos.", logo: "Imgsenhorito-bebidas", logoMaior: "senhorito-bebidas")
        ]
    }
}
