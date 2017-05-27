//
//  ResultadoBusca.swift
//  miloo
//
//  Created by Andre Rosa on 26/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ResultadoBuscaTVC: UITableViewController, UISearchBarDelegate{

    @IBOutlet weak var searchBar: UISearchBar!

    var listaResultados = [ResultadoBusca]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.isHidden = true
        
        for _ in 0...10{
            listaResultados.append(ResultadoBusca(background: "informatica_cover", title: "Nome Fantasia", icon: "informatica_icon", userImage: "Daenerys-0", endereco: "R Visconde de Inhauma, 470", moreInfo: "Ribeirão Preto - SP  |  40 - 45 min"))
          
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func searchBtnPress(_ sender: Any) {
        searchBar.isHidden = false
        searchBar.becomeFirstResponder()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar){
        searchBar.isHidden = true
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ResultadoBuscaCell") as? ResultadoBuscaCell{
           
            let resultadoCell = listaResultados[indexPath.row]
            
            cell.updateUI(ResultadoBusca: resultadoCell)
            
            return cell
        } else{
            return UITableViewCell()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaResultados.count
    }
    
}
