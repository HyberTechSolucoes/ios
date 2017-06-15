//
//  AvaliacaoCell.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AvaliacaoCell: UITableViewCell {


    
    @IBOutlet weak var reponderBtn: UIButton!
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var comentario: UILabel!
    @IBOutlet weak var ratingData: UILabel!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var resposta: UILabel!
    @IBOutlet weak var containerResposta: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagem.layer.cornerRadius = 23;
        imagem.clipsToBounds = true;
    }

    func updadeAvaliacaoUI(Avaliacao: Avaliacao){
        
        imagem.image = UIImage(named: Avaliacao.image)
        comentario.text = Avaliacao.comentario
        ratingData.text = Avaliacao.dataPost
        nome.text = Avaliacao.nome
        resposta.text = Avaliacao.resposta
        
        if Avaliacao.resposta != ""{
            
            containerResposta.isHidden = false
            reponderBtn.isHidden = true
         
            
        }else{
            reponderBtn.isHidden = false
            containerResposta.isHidden = true
        
        }
        
        if Avaliacao.avaliacao > 0{
            
            for i in 1...Avaliacao.avaliacao{
                let starRate = self.contentView.viewWithTag(i) as! UIImageView
                starRate.isHidden = false
            }
            
        }
      
        
    }
    
}
