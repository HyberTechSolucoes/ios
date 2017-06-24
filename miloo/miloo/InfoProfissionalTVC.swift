//
//  InfoProfissionalTVC.swift
//  miloo
//
//  Created by Andre Rosa on 16/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class InfoProfissionalTVC: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource, UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgsGaleria = [GaleriaProfissinal]()
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgsGaleria.append(GaleriaProfissinal(imagem: "add_galeria"))
        for _ in 0...10{
            imgsGaleria.append(GaleriaProfissinal(imagem: "informatica_cover"))
        }
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        imagePicker.delegate = self
        
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            self.pickImage()
        }
    }
    
    
    func pickImage(){
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            self.imagePicker.delegate = self
            self.imagePicker.sourceType = .savedPhotosAlbum;
            self.imagePicker.allowsEditing = false
            
            self.present(self.imagePicker, animated: true, completion: nil)
        }
    }
    
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in
            
        })
        // imgCapa.image = image
    }
    
}
