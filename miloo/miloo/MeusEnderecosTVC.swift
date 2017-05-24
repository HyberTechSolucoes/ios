//
//  MeusEnderecosTVC.swift
//  miloo
//
//  Created by Danillo Lange on 24/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class MeusEnderecosTVC: UITableViewController {
    
    var meusEnderecos = [Endereco]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        meusEnderecos.append(Endereco(rua: "R. Visconde de Inhaúma", numero: 170, bairro: "Jardim Paulista", cidade: "Ribeirão Preto", estado: "SP"))
        
        meusEnderecos.append(Endereco(rua: "Avenida Sumaré", numero: 160, bairro: "Jardim Sumaré", cidade: "Ribeirão Preto", estado: "SP"))
        
        meusEnderecos.append(Endereco(rua: "R. Dumont", numero: 170, bairro: "Jardim Dumont", cidade: "Dumont Preto", estado: "SP"))
        
    }


    // Tratamento e alimentação da tabela
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meusEnderecos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellEndereco = tableView.dequeueReusableCell(withIdentifier: "EnderecoCell", for: indexPath) as? EnderecoCell {
            
            let enderecoCell = meusEnderecos[indexPath.row]
            
            cellEndereco.updateEnderecoUI(Endereco: enderecoCell)
            
            return cellEndereco
            
        } else {
            return UITableViewCell()
        }
    }
    
    // Funções para o swipe "delete"
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            
            // Tratamento de quando você realiza o delete
            
            meusEnderecos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
