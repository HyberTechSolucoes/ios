//
//  ServicoCell.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ServicoCell: UITableViewCell {

    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updadeServicoUI(Servico: Servico){
        preco.text = Servico.preco
        titulo.text = Servico.titulo
        descricao.text = Servico.descricao
    }
}
