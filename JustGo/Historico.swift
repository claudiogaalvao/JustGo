//
//  Historico.swift
//  JustGo
//
//  Created by student on 11/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Historico {
    var nome: String?
    var data: String?
    var recibo: String?
    
    init(nome: String, data: String, recibo: String){
        self.nome = nome
        self.data = data
        self.recibo = recibo
    }

}

class HistoricoDAO {
    static func getEHistoricos() -> [Historico]
    {
        return[
            Historico(nome: "Mama-mia", data: "10/05/2018 14:32", recibo: "omaxio-recibo"),
            Historico(nome: "Senhorito Bebibas", data: "14/06/2018 11:48", recibo: "omaxio-recibo")
        ]
    }
}
