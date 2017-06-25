//
//  ResultadoBuscaDetalhesTVC.swift
//  miloo
//
//  Created by Andre Rosa on 30/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ResultadoBuscaDetalhesVC: UIViewController {

    @IBOutlet weak var imgPerfil: RoundedImage!
    @IBOutlet weak var imgCapa: UIImageView!
    
    @IBOutlet weak var containerAvaliacoes: UIView!
    @IBOutlet weak var containerServicos: UIView!
    @IBOutlet weak var containerInfo: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        containerAvaliacoes.isHidden = true
        containerServicos.isHidden = false
        containerInfo.isHidden = true
        
    }
    @IBAction func tabTouch(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            containerAvaliacoes.isHidden = true
            containerServicos.isHidden = false
            containerInfo.isHidden = true
        case 1:
            containerAvaliacoes.isHidden = false
            containerServicos.isHidden = true
            containerInfo.isHidden = true
        case 2:
            containerAvaliacoes.isHidden = true
            containerServicos.isHidden = true
            containerInfo.isHidden = false
        default:
            break;
        }
    }


}
