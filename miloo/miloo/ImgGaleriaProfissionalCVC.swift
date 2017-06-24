//
//  ImgGaleriaProfissional.swift
//  miloo
//
//  Created by Andre Rosa on 24/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ImgGaleriaProfissionalCVC: UICollectionViewCell {
    
    @IBOutlet weak var imgCell: UIImageView!

    func updateGaleria(GaleriaProfissinal: GaleriaProfissinal){
    
        imgCell.image = UIImage(named: GaleriaProfissinal.imagem)
    }
}
