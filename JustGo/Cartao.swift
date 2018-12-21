//
//  Cartao.swift
//  JustGo
//
//  Created by student on 11/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Cartao {
    var bandeira: String?
    var numero: String?
    
    init(bandeira: String, numero: String){
        self.bandeira = bandeira
        self.numero = numero
    }
}

class CartaoDAO {
    static func getCartoes() -> [Cartao]
    {
        return[
            Cartao(bandeira: "visa", numero: "**** - **** - 4523 - 7895"),
            Cartao(bandeira: "mastercard", numero: "**** - **** - 5321 - 1452")
        ]
    }
}
