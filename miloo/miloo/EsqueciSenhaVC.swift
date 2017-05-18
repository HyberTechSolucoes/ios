//
//  EsqueciSenhaVC.swift
//  miloo
//
//  Created by Danillo Lange on 17/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class EsqueciSenhaVC: UIViewController {
    
    @IBAction func buttonVoltar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var buttonEnviar: UIButton!
    
    @IBAction func buttonEnviar(_ sender: Any) {
        let alertController = UIAlertController(title: "Miloo", message: "Senha enviada para seu e-mail.", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonEnviar.layer.cornerRadius = 4
        buttonEnviar.clipsToBounds = true

        // Do any additional setup after loading the view.
    }


}
