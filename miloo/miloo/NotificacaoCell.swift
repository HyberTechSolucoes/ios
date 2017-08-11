//
//  NotificacaoCell.swift
//  miloo
//
//  Created by Andre Rosa on 26/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

@IBDesignable class NotificacaoCell: UITableViewCell {
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var notificacaoMsg: UILabel!
    @IBOutlet weak var notificacaoHorario: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagem.layer.cornerRadius = imagem.frame.size.width/2
    }
    
    func updadeNotificacaoUI(Notificacoes: Notificacao){
        imagem.image = UIImage(named: Notificacoes.imagem)
        notificacaoMsg.text = Notificacoes.mensagem
        notificacaoHorario.text = Notificacoes.horario
    }

}
