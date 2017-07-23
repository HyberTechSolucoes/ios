//
//  AgendaTVC.swift
//  miloo
//
//  Created by Danillo Lange on 23/07/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AgendaTVC: UITableViewController {

    var meusServicos = [Servico]()
    
    @IBAction func buttonVoltar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        meusServicos.append(Servico(titulo: "Cabeleireiro", descricao: "Um corte bem massa", preco: "R$40"))
        meusServicos.append(Servico(titulo: "Puteiro", descricao: "Vai ser loko", preco: "R$20"))
        meusServicos.append(Servico(titulo: "Informático", descricao: "Vou formatar você", preco: "R$50"))
        
    }
    
    
    // Tratamento e alimentação da tabela
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meusServicos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellAgenda = tableView.dequeueReusableCell(withIdentifier: "AgendaCell", for: indexPath) as? AgendaCell {
            
            let agendaCell = meusServicos[indexPath.row]
            
            cellAgenda.updateAgendaUI(Servico: agendaCell)
            
            return cellAgenda
            
        } else {
            return UITableViewCell()
        }
    }
    
    // Funções para o swipe "delete"
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
