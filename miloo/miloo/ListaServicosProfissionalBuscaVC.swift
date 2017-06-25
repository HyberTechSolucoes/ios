//
//  ListaServicosProfissional.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ListaServicosProfissionalBuscaVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var servicos = [Servico]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            servicos.append(Servico(titulo: "Servico \(i)", descricao: "Teste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricaoTeste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricao Teste de descricao ", preco: "R$ 20,00"))
        }
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 110
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ServicoCell", for: indexPath) as? ServicoCell{
            
            let servico = servicos[indexPath.row]
            
            cell.updadeServicoUI(Servico: servico)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servicos.count
    }
    
}
