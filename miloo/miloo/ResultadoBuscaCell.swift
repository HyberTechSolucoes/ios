//
//  ResultadoBuscaCell.swift
//  miloo
//
//  Created by Andre Rosa on 26/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ResultadoBuscaCell: UITableViewCell {
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var ResultIcon: UIImageView!
    @IBOutlet weak var PessoaImg: RoundedImage!
    @IBOutlet weak var PessoaNome: UILabel!
    @IBOutlet weak var PessoaEndereco: UILabel!
    @IBOutlet weak var PessoaMaisInfo: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(ResultadoBusca: ResultadoBusca){
        Background.image = UIImage(named: ResultadoBusca.background)
        ResultIcon.image = UIImage(named: ResultadoBusca.icon)
        PessoaImg.image = UIImage(named: ResultadoBusca.userImage)
        PessoaNome.text = ResultadoBusca.title
        PessoaEndereco.text = ResultadoBusca.endereco
        PessoaMaisInfo.text = ResultadoBusca.moreInfo
    }


}
