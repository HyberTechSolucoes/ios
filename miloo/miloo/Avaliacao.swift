//
//  Avaliacao.swift
//  miloo
//
//  Created by Andre Rosa on 14/06/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Avaliacao{
    private var _image: String!
    private var _nome: String!
    private var _dataPost: String!
    private var _comentario: String!
    private var _avaliacao: Int!
    private var _resposta: String!
    
    var image: String{
        return _image
    }
    
    var nome: String{
        return _nome
    }
    
    var dataPost: String{
        return _dataPost
    }
    
    var comentario: String{
        return _comentario
    }
    
    var avaliacao: Int{
        return _avaliacao
    }
    
    var resposta: String{
        return _resposta
    }
    
    init(image: String, nome: String, dataPost: String, comentario: String, avaliacao: Int, resposta: String) {
        _image = image
        _nome = nome
        _dataPost = dataPost
        _comentario = comentario
        _avaliacao = avaliacao
        _resposta = resposta
    }
    
}
