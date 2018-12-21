//
//  Estabelecimentos.swift
//  JustGo
//
//  Created by student on 11/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Estabelecimentos {
    var nome: String?
    var tag: String?
    var descricao: String?
    var logo: String?
    
    init(nome: String, tag: String, descricao: String, logo: String){
        self.nome = nome
        self.tag = tag
        self.descricao = descricao
        self.logo = logo
    }
}

class EstabelecimentosDAO {
    static func getEstabelecimentos() -> [Estabelecimento]
}
