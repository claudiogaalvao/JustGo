//
//  EfetuandoPagamentoViewController.swift
//  JustGo
//
//  Created by student on 13/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class EfetuandoPagamentoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        perform(#selector(EfetuandoPagamentoViewController.showNavController), with: nil, afterDelay: 3)
    }
    
    func showNavController() {
        performSegue(withIdentifier: "showPagamentoEfetuado", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
