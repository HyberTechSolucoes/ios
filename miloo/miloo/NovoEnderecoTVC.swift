//
//  NovoEnderecoTVC.swift
//  miloo
//
//  Created by Danillo Lange on 24/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NovoEnderecoTVC: UITableViewController {
    
    @IBOutlet weak var fieldCEP: UITextField!
    @IBOutlet weak var fieldRua: UITextField!
    @IBOutlet weak var fieldBairro: UITextField!
    @IBOutlet weak var fieldCidade: UITextField!
    @IBOutlet weak var fieldEstado: UITextField!
    
    @IBAction func buttonFechar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buttonExcluir(_ sender: Any) {
        fieldCEP.text = ""
        fieldRua.text = ""
        fieldBairro.text = ""
        fieldCidade.text = ""
        fieldEstado.text = ""
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

}
