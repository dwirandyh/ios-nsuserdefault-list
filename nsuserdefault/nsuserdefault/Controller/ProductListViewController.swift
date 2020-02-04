//
//  ProductListViewController.swift
//  nsuserdefault
//
//  Created by Dwi Randy Herdinanto on 04/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        // set status bar agar menjadi berwarna putih
        navigationController?.navigationBar.barStyle = .black
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let product = UserPreferenceHelper.getProduct() {
            productNameLabel.text = product.name
            productPriceLabel.text = "\(String(product.price))"
            productDescriptionLabel.text = product.description
        }
    }
    
    
    
    
    @IBAction func showAddItemForm(_ sender: Any) {
        // pindah ke halaman AddProduct
        performSegue(withIdentifier: AddProductViewController.SEGUE_IDENTIFIER, sender: self)
    }
    
}
