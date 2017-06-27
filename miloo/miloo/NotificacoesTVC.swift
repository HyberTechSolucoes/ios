//
//  NotificacoesTVC.swift
//  miloo
//
//  Created by Andre Rosa on 26/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotificacoesTVC: UITableViewController {

    var listaNotificacoes = [Notificacao]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...10{
            listaNotificacoes.append(Notificacao(imagem: "Daenerys-0", mensagem: "Robson Silva avaliou o seu atendimento, veja o comentário e responda, lorem ipsum lorem ipsum.", horario: "há \(i+28) minutos"))
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaNotificacoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "notificacaoCell") as? NotificacaoCell{
            
            let notificacaoCell = listaNotificacoes[indexPath.row]
            
            cell.updadeNotificacaoUI(Notificacoes: notificacaoCell)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    
}
