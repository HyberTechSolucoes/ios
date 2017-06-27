//
//  Notificacao.swift
//  miloo
//
//  Created by Andre Rosa on 26/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Notificacao{
    
    private var _imagem: String
    private var _mensagem: String
    private var _horario: String
    
    var imagem: String{
        return _imagem
    }
    var mensagem: String{
        return _mensagem
    }
    var horario: String{
        return _horario
    }
    
    init(imagem:String, mensagem: String, horario: String) {
        _imagem = imagem
        _mensagem = mensagem
        _horario = horario
    }
    
}
