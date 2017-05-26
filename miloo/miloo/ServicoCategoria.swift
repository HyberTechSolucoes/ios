//
//  ServicosCategorias.swift
//  miloo
//
//  Created by Andre Rosa on 25/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class ServicoCategoria{
    private var _background: String!
    private var _title: String!
    private var _icon: String!
    
    var background: String{
        return _background
    }

    var title: String{
        return _title
    }
    
    var icon: String{
        return _icon
    }
    
    init(background: String, title: String, icon: String) {
        _background = background
        _title = title
        _icon = icon
    }
    
}
