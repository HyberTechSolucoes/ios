//
//  ListaAvaliacoesProfissionalVC.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ListaAvaliacoesProfissionalVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var avaliacoes = [Avaliacao]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
           avaliacoes.append(Avaliacao(image: "Daenerys-0", nome: "Pessoa numero", dataPost: "23 de Jan de 2017", comentario: "Loren Ipsum Loren Ipsum Loren Ipsum Loren IpsumLoren Ipsum Loren Ipsum Loren Ipsum Loren IpsumLoren Ipsum Loren Ipsum Loren Ipsum Loren Ipsum", avaliacao: 4, resposta: ""))
        for i in 0...10{
            avaliacoes.append(Avaliacao(image: "Daenerys-0", nome: "Pessoa numero \(i)", dataPost: "23 de Jan de 2017", comentario: "Loren Ipsum Loren Ipsum Loren Ipsum Loren IpsumLoren Ipsum Loren Ipsum Loren Ipsum Loren IpsumLoren Ipsum Loren Ipsum Loren Ipsum Loren Ipsum", avaliacao: 4, resposta: "Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado Obrigado "))
        }
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 110
        
        tableView.delegate = self
        tableView.dataSource = self
    }
   
    
    @IBAction func ResponderBtnPress(_ sender: Any) {
       presentAlert(nome: "Nome Fulano")
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AvaliacaoCell", for: indexPath) as? AvaliacaoCell{
            
            let avaliacao = avaliacoes[indexPath.row]
            
            cell.updadeAvaliacaoUI(Avaliacao: avaliacao)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avaliacoes.count
    }
    
    
    func presentAlert(nome: String) {
        let alertController = UIAlertController(title: "", message: "Respondendo a \(nome)", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Ok", style: .default) { (_) in
            if (alertController.textFields?[0]) != nil {
//                // store your data
//                UserDefaults.standard.set(field.text, forKey: "userEmail")
//                UserDefaults.standard.synchronize()
            } else {
                // user did not fill field
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Sua Resposta"
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}
