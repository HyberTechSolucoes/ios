//
//  IndiqueVC.swift
//  miloo
//
//  Created by Danillo Lange on 24/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class IndiqueVC: UIViewController {
    
    @IBAction func buttonCompartilhar(_ sender: Any) {
        
        // link a ser compartilhado
        let link = "http://convite.miloo.com.br"
        
        // atividade da view controller
        let textToShare = [link]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // Excluir alguns tipos de share
        //activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
