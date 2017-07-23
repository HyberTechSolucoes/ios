//
//  AgendaCell.swift
//  miloo
//
//  Created by Danillo Lange on 23/07/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AgendaCell: UITableViewCell {
    
    
    @IBOutlet weak var imgPerfil: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelServico: UILabel!
    @IBOutlet weak var labelData: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateAgendaUI(Servico: Servico){
        imgPerfil.image = UIImage(named: "daenerys")
        labelNome.text = "Maria das Cruzes"
        labelServico.text = Servico.descricao
        labelData.text = "23 de Out às 13h30"
    }

}
