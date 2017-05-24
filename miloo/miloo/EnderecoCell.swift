//
//  EnderecoCell.swift
//  miloo
//
//  Created by Danillo Lange on 24/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class EnderecoCell: UITableViewCell {
    

    @IBOutlet weak var imgPin: UIImageView!
    @IBOutlet weak var labelRua: UILabel!
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var labelBairro: UILabel!
    @IBOutlet weak var labelCidade: UILabel!
    @IBOutlet weak var labelEstado: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateEnderecoUI(Endereco: Endereco){
        imgPin.image = UIImage(named: "pin_icon")
        labelRua.text = Endereco.rua
        labelNumero.text = String(Endereco.numero)
        labelBairro.text = Endereco.bairro
        labelCidade.text = Endereco.cidade
        labelEstado.text = Endereco.estado
    }

}
