//
//  Endereco.swift
//  miloo
//
//  Created by Danillo Lange on 24/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Endereco {
    
    private var _rua: String!
    private var _numero: Int!
    private var _bairro: String!
    private var _cidade: String!
    private var _estado: String!
    
    var rua: String {
        return _rua
    }
    
    var numero: Int {
        return _numero
    }
    
    var bairro: String!{
        return _bairro
    }
    
    var cidade: String{
        return _cidade
    }
    
    var estado: String{
        return _estado
    }
    
    init(rua: String, numero: Int, bairro: String, cidade: String, estado: String){
        _rua   = rua
        _numero = numero
        _bairro  = bairro
        _cidade = cidade
        _estado = estado
    }
    
}
