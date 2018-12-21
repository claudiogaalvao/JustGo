//
//  DetalhesEstabelecimentoViewController.swift
//  JustGo
//
//  Created by student on 11/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DetalhesEstabelecimentoViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var estabelecimento: Estabelecimento?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if estabelecimento != nil {
            logoImage.image = UIImage(named: (estabelecimento?.logoMaior)!)
            tagLabel.text = estabelecimento?.tag
            descricaoLabel.text = estabelecimento?.descricao
            
            self.navigationItem.title = estabelecimento?.nome
        }
        
        // Do any additional setup after loading the view.
    }

}
