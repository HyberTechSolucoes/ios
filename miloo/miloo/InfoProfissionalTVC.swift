//
//  InfoProfissionalTVC.swift
//  miloo
//
//  Created by Andre Rosa on 16/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class InfoProfissionalTVC: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var imgsGaleria = [GaleriaProfissinal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0...10{
            imgsGaleria.append(GaleriaProfissinal(imagem: "informatica_cover"))
        }
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgsGaleria.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImgGaleriaProfissionalCVC", for: indexPath) as? ImgGaleriaProfissionalCVC{
            let imgGaleria = imgsGaleria[indexPath.row]
            
            cell.updateGaleria(GaleriaProfissinal: imgGaleria)
            
            return cell
            
        } else{
            return UICollectionViewCell()
        }
    }
    
}
