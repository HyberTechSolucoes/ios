//
//  MeusDadosTVC.swift
//  miloo
//
//  Created by Danillo Lange on 23/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class MeusDadosTVC: UITableViewController {
    

    @IBAction func buttonFechar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buttonSalvar(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

}
