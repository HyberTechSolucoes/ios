//
//  ServicosCategoriasTVC.swift
//  miloo
//
//  Created by Andre Rosa on 25/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ServicosTVC: UITableViewController{
    
    var listaServicosCategorias =  [ServicoCategoria]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            listaServicosCategorias.append(ServicoCategoria(background: "informatica_cover", title: "Pessoa Serviço \(i)", icon: "informatica_icon"))
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tirei o index path pois estava dando erro na busca
        //if let cell = tableView.dequeueReusableCell(withIdentifier: "ServicoCategoriaCell", for: indexPath) as?
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ServicoCategoriaCell") as? ServicoCategoriaCell{
            
            let servicoCell = listaServicosCategorias[indexPath.row]
            
            cell.UpdateUI(ServicosCategorias: servicoCell)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaServicosCategorias.count
    }
    
    @IBAction func addBtnPress(_ sender: Any) {
        performSegue(withIdentifier: "editarDetalhesSG", sender: nil)
    }
    
    
}
