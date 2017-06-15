//
//  Servico.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Servico{
    private var _titulo: String!
    private var _descricao: String!
    private var _preco: String!
    
    var titulo: String{
        return _titulo
    }
    
    var descricao: String{
        return _descricao
    }
    
    var preco: String{
        return _preco
    }
    
    init(titulo: String, descricao: String, preco: String) {
        _titulo = titulo
        _descricao = descricao
        _preco = preco
    }
    
}
