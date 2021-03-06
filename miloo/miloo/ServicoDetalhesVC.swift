//
//  ResultadoBuscaDetalhesTVC.swift
//  miloo
//
//  Created by Andre Rosa on 30/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ServicoDetalhesVC: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imgPerfil: RoundedImage!
    @IBOutlet weak var imgCapa: UIImageView!
    
    @IBOutlet weak var containerAvaliacoes: UIView!
    @IBOutlet weak var containerServicos: UIView!
    @IBOutlet weak var containerInfo: UIView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerAvaliacoes.isHidden = true
        containerServicos.isHidden = false
        containerInfo.isHidden = true
        
        imagePicker.delegate = self
        
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
    
    @IBAction func capaBtnPress(_ sender: Any) {
        
        let optionMenu = UIAlertController(title: nil, message: "Editar perfil", preferredStyle: .actionSheet)
        
        let altFoto = UIAlertAction(title: "Alterar foto do perfil", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            self.pickImage()
            
        })
        let altCapa = UIAlertAction(title: "Alterar foto da capa", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            self.pickImage()
            
        })
        
        let altContato = UIAlertAction(title: "Alterar dados do contato", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            //criando programaticamente uma segue
            
            let editarContatoSG = self.storyboard?.instantiateViewController(withIdentifier: "EditarContatoTVC") as! UINavigationController
            
            self.present(editarContatoSG, animated: true, completion: nil)
            
            // self.performSegue(withIdentifier: "editarContatoSG", sender: nil)
            
        })
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            
        })
        
        optionMenu.addAction(altFoto)
        optionMenu.addAction(altCapa)
        optionMenu.addAction(altContato)
        optionMenu.addAction(cancelAction)
        
        self.present(optionMenu, animated: true, completion: nil)
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
