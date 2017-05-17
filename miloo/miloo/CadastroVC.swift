//
//  CadastroVC.swift
//  miloo
//
//  Created by Danillo Lange on 16/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation
import UIKit

class CadastroVC: UIViewController {
    
    @IBAction func buttonVoltar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var buttonCadastrar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCadastrar.layer.cornerRadius = 4
        buttonCadastrar.clipsToBounds = true
        
    }
    
}
