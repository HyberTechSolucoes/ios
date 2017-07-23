//
//  AgendaServico.swift
//  miloo
//
//  Created by Danillo Lange on 23/07/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class AgendaServico {
    
    private var _idServico: String
    private var _dataServico: String
    
    var idServico: String{
        return _idServico
    }
    
    var dataServico: String{
        return _dataServico
    }
    
    init(idServico:String, dataServico: String) {
        _idServico = idServico
        _dataServico = dataServico
    }
    
}
