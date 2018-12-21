//
//  DetalhesHistoricoViewController.swift
//  JustGo
//
//  Created by student on 12/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DetalhesHistoricoViewController: UIViewController {
    
    @IBOutlet weak var reciboImage: UIImageView!
    
    var historico: Historico?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if historico != nil {
            reciboImage.image = UIImage(named: (historico?.recibo)!)
        }
        
        self.navigationItem.title = historico?.nome
        // Do any additional setup after loading the view.
    }

}
