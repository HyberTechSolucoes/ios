//
//  ResultadoBusca.swift
//  miloo
//
//  Created by Andre Rosa on 26/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ResultadoBusca: UITableViewController, UISearchBarDelegate{

    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.isHidden = true
    }
    
    @IBAction func searchBtnPress(_ sender: Any) {
        searchBar.isHidden = false
        searchBar.becomeFirstResponder()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
        searchBar.isHidden = true
    }

}
