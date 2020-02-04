//
//  UserPreferenceHelper.swift
//  nsuserdefault
//
//  Created by Dwi Randy Herdinanto on 04/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class UserPreferenceHelper {
    
    static let ProductListKey = "ProductListKey"
    
    static func updateProduct(product : Product){
        let defaults = UserDefaults.standard
        defaults.set(product.name, forKey: ProductKey.name.rawValue)
        defaults.set(product.price, forKey: ProductKey.price.rawValue)
        defaults.set(product.description, forKey: ProductKey.description.rawValue)
    }
    
    static func getProduct() -> Product? {
        let defaults = UserDefaults.standard
        
        if let productName = defaults.string(forKey: ProductKey.name.rawValue), let productDescription = defaults.string(forKey: ProductKey.description.rawValue){
            let productPrice = defaults.integer(forKey: ProductKey.price.rawValue)
            return Product(name: productName, price: productPrice, description: productDescription)
        }
        
        return nil
    }
}
