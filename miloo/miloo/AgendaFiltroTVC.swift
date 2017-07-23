//
//  AgendaFiltroTVC.swift
//  miloo
//
//  Created by Danillo Lange on 23/07/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AgendaFiltroTVC: UITableViewController {
    
    var checked = [Bool]() // Have an array equal to the number of cells in your table

    @IBAction func buttonCancelar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    //para controlar o checkmark de cada item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let section = indexPath.section
        let numberOfRows = tableView.numberOfRows(inSection: section)
        
        for row in 0..<numberOfRows {
            if let cell = tableView.cellForRow(at: IndexPath(row: row, section: section)) {
                cell.accessoryType = row == indexPath.row ? .checkmark : .none
            }
        }
    }
    
}
