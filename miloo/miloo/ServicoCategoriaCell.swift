//
//  ServicosCategoriasCell.swift
//  miloo
//
//  Created by Andre Rosa on 25/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ServicoCategoriaCell: UITableViewCell {

    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var Icon: UIImageView!
    @IBOutlet weak var Title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    func UpdateUI(ServicosCategorias: ServicoCategoria){
        Background.image = UIImage(named: ServicosCategorias.background)
        Icon.image = UIImage(named: ServicosCategorias.icon)
        Title.text = ServicosCategorias.title
    }

}
