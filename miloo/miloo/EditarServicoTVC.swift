//
//  EditarServicoTVC.swift
//  miloo
//
//  Created by Andre Rosa on 24/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class EditarServicoTVC: UITableViewController {

    @IBOutlet weak var precoCombSwitch: UISwitch!
    @IBOutlet weak var valorServicoField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func switchChange(_ sender: Any) {
        if precoCombSwitch.isOn{
            valorServicoField.isUserInteractionEnabled = false
            valorServicoField.text = ""
        } else{
            valorServicoField.isUserInteractionEnabled = true
        }
    }

    @IBAction func CancelarBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

