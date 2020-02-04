//
//  Product.swift
//  nsuserdefault
//
//  Created by Dwi Randy Herdinanto on 03/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

enum ProductKey : String {
    case name = "name"
    case price = "price"
    case description = "description"
}

struct Product{
    var name: String!
    var price: Int!
    var description : String!
    
    init(name: String, price: Int, description : String) {
        self.name = name
        self.price = price
        self.description = description
    }
}
