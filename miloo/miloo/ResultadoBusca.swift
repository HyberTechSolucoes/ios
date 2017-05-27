//
//  ResultadoBusca.swift
//  miloo
//
//  Created by Andre Rosa on 26/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class ResultadoBusca {
    private var _background: String!
    private var _title: String!
    private var _icon: String!
    private var _userImage: String!
    private var _endereco: String!
    private var _moreInfo: String!
    
    var background: String{
        return _background
    }
    var title: String{
        return _title
    }
    var icon: String{
        return _icon
    }
    var userImage: String{
        return _userImage
    }
    var endereco: String{
        return _endereco
    }
    var moreInfo: String{
        return _moreInfo
    }
    
    init(background: String, title: String, icon: String, userImage: String, endereco: String, moreInfo: String) {
        _background = background
        _title = title
        _icon = icon
        _userImage = userImage
        _endereco = endereco
        _moreInfo = moreInfo
    }
}
