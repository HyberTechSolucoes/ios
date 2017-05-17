//
//  LoginVC.swift
//  miloo
//
//  Created by Danillo Lange on 16/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var buttonEntrar: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonEntrar.layer.cornerRadius = 4
        buttonEntrar.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
}
